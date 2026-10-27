.class public Lcom/android/internal/app/MiuiResolverActivity;
.super Lcom/android/internal/compat/AlertActivity2;
.source "MiuiResolverActivity.java"

# interfaces
.implements Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/MiuiResolverActivity$PickTargetOptionRequest;,
        Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;,
        Lcom/android/internal/app/MiuiResolverActivity$ResolvedComponentInfo;,
        Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = true

.field public static blacklist ENABLE_TABBED_VIEW:Z = false

.field static final blacklist EXTRA_CALLING_USER:Ljava/lang/String; = "com.android.internal.app.ResolverActivity.EXTRA_CALLING_USER"

.field private static final blacklist EXTRA_FRAGMENT_ARG_KEY:Ljava/lang/String; = ":settings:fragment_args_key"

.field public static final blacklist EXTRA_IS_AUDIO_CAPTURE_DEVICE:Ljava/lang/String; = "is_audio_capture_device"

.field static final blacklist EXTRA_SELECTED_PROFILE:Ljava/lang/String; = "com.android.internal.app.ResolverActivity.EXTRA_SELECTED_PROFILE"

.field private static final blacklist EXTRA_SHOW_FRAGMENT_ARGS:Ljava/lang/String; = ":settings:show_fragment_args"

.field private static final blacklist LAST_SHOWN_TAB_KEY:Ljava/lang/String; = "last_shown_tab_key"

.field protected static final blacklist METRICS_CATEGORY_CHOOSER:Ljava/lang/String; = "intent_chooser"

.field protected static final blacklist METRICS_CATEGORY_RESOLVER:Ljava/lang/String; = "intent_resolver"

.field private static final blacklist OPEN_LINKS_COMPONENT_KEY:Ljava/lang/String; = "app_link_state"

.field static final blacklist PROFILE_PERSONAL:I = 0x0

.field static final blacklist PROFILE_WORK:I = 0x1

.field private static final blacklist TAB_TAG_PERSONAL:Ljava/lang/String; = "personal"

.field private static final blacklist TAB_TAG_WORK:Ljava/lang/String; = "work"

.field private static final blacklist TAG:Ljava/lang/String; = "MiuiResolverActivity"


# instance fields
.field private final blacklist PACKAGE_NAME_DPC_TEST:Ljava/lang/String;

.field protected blacklist mAdapter:Lcom/android/internal/app/ResolverListAdapter;

.field private blacklist mAlwaysButton:Landroid/widget/Button;

.field blacklist mChooserActivityStubImpl:Lcom/android/internal/app/ChooserActivityStub;

.field private blacklist mCustomView:Landroid/view/View;

.field private blacklist mDefaultTitleResId:I

.field private blacklist mFooterSpacer:Landroid/widget/Space;

.field private blacklist mHeaderCreatorUser:Landroid/os/UserHandle;

.field protected final blacklist mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastSelected:I

.field protected blacklist mLaunchedFromUid:I

.field private blacklist mLayoutId:I

.field protected blacklist mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

.field private blacklist mOnceButton:Landroid/widget/Button;

.field private blacklist mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private blacklist mPickOptionRequest:Lcom/android/internal/app/MiuiResolverActivity$PickTargetOptionRequest;

.field protected greylist mPm:Landroid/content/pm/PackageManager;

.field public blacklist mProfileSwitchMessageId:I

.field protected blacklist mProfileView:Landroid/view/View;

.field public blacklist mReferrerPackage:Ljava/lang/String;

.field public blacklist mRegistered:Z

.field blacklist mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

.field blacklist mResolverActivityStubImplSingleton:Lcom/android/internal/app/ResolverActivityStub;

.field protected blacklist mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

.field private blacklist mResolvingHome:Z

.field private blacklist mRetainInOnStop:Z

.field private blacklist mSafeForwardingMode:Z

.field protected blacklist mSupportsAlwaysUseOption:Z

.field protected blacklist mSystemWindowInsets:Landroid/graphics/Insets;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private blacklist mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private blacklist mWorkProfileHasBeenEnabled:Z

.field private blacklist mWorkProfileStateReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mWorkProfileUserHandle:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCustomView(Lcom/android/internal/app/MiuiResolverActivity;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mCustomView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWorkProfileHasBeenEnabled(Lcom/android/internal/app/MiuiResolverActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mWorkProfileHasBeenEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPickOptionRequest(Lcom/android/internal/app/MiuiResolverActivity;Lcom/android/internal/app/MiuiResolverActivity$PickTargetOptionRequest;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/MiuiResolverActivity$PickTargetOptionRequest;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWorkProfileHasBeenEnabled(Lcom/android/internal/app/MiuiResolverActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mWorkProfileHasBeenEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misWorkProfileEnabled(Lcom/android/internal/app/MiuiResolverActivity;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/MiuiResolverActivity;->isWorkProfileEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mresetCheckedItem(Lcom/android/internal/app/MiuiResolverActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/MiuiResolverActivity;->resetCheckedItem()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 188
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/MiuiResolverActivity;->ENABLE_TABBED_VIEW:Z

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 3

    .line 134
    invoke-direct {p0}, Lcom/android/internal/compat/AlertActivity2;-><init>()V

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mLastSelected:I

    .line 142
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolvingHome:Z

    .line 147
    iput v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mProfileSwitchMessageId:I

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mIntents:Ljava/util/ArrayList;

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    .line 173
    iput-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    .line 185
    iput-boolean v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mWorkProfileHasBeenEnabled:Z

    .line 199
    const-string v0, "com.afwsamples.testdpc"

    iput-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->PACKAGE_NAME_DPC_TEST:Ljava/lang/String;

    .line 135
    return-void
.end method

.method private blacklist canAppInteractCrossProfiles(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1968
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_9} :catch_2f

    .line 1972
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 1973
    iget-boolean v2, v1, Landroid/content/pm/ApplicationInfo;->crossProfile:Z

    if-nez v2, :cond_f

    .line 1974
    return v0

    .line 1977
    :cond_f
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1979
    .local v2, "packageUid":I
    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-direct {p0, v3, v2}, Lcom/android/internal/app/MiuiResolverActivity;->isPermissionGranted(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1b

    .line 1981
    return v4

    .line 1983
    :cond_1b
    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v3, v2}, Lcom/android/internal/app/MiuiResolverActivity;->isPermissionGranted(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_24

    .line 1985
    return v4

    .line 1987
    :cond_24
    const/4 v3, -0x1

    const-string v5, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-static {p0, v5, v3, v2, p1}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2e

    .line 1989
    return v4

    .line 1991
    :cond_2e
    return v0

    .line 1969
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageUid":I
    :catch_2f
    move-exception v1

    .line 1970
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist on current user."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiResolverActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    return v0
.end method

.method private blacklist configureContentView()Z
    .registers 5

    .line 1788
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 1794
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildActiveTab(Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1795
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    move v0, v2

    goto :goto_22

    :cond_21
    :goto_21
    move v0, v1

    .line 1796
    .local v0, "rebuildCompleted":Z
    :goto_22
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->shouldShowTabs()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 1797
    iget-object v3, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildInactiveTab(Z)Z

    move-result v3

    if-nez v3, :cond_3f

    iget-object v3, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1798
    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v3

    if-eqz v3, :cond_3d

    goto :goto_3f

    :cond_3d
    move v3, v2

    goto :goto_40

    :cond_3f
    :goto_3f
    move v3, v1

    .line 1799
    .local v3, "rebuildInactiveCompleted":Z
    :goto_40
    if-eqz v0, :cond_45

    if-eqz v3, :cond_45

    goto :goto_46

    :cond_45
    move v1, v2

    :goto_46
    move v0, v1

    .line 1802
    .end local v3    # "rebuildInactiveCompleted":Z
    :cond_47
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->useLayoutWithDefault()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 1803
    const v1, 0x1090101

    iput v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mLayoutId:I

    goto :goto_59

    .line 1805
    :cond_53
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getLayoutResource()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mLayoutId:I

    .line 1807
    :goto_59
    iget v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mLayoutId:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MiuiResolverActivity;->setContentView(I)V

    .line 1808
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    const v2, 0x1020452

    invoke-virtual {p0, v2}, Lcom/android/internal/app/MiuiResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->setupViewPager(Lcom/android/internal/widget/ViewPager;)V

    .line 1809
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiResolverActivity;->postRebuildList(Z)Z

    move-result v1

    return v1

    .line 1789
    .end local v0    # "rebuildCompleted":Z
    :cond_71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mMultiProfilePagerAdapter.getCurrentListAdapter() cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist createResolverMultiProfilePagerAdapterForOneProfile([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;
    .registers 11
    .param p1, "initialIntents"    # [Landroid/content/Intent;
    .param p3, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)",
            "Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;"
        }
    .end annotation

    .line 635
    .local p2, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity;->mIntents:Ljava/util/ArrayList;

    .line 641
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 635
    move-object v0, p0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/MiuiResolverActivity;->createResolverListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 642
    .local v0, "adapter":Lcom/android/internal/app/ResolverListAdapter;
    new-instance v1, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    .line 645
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;-><init>(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Landroid/os/UserHandle;Landroid/os/UserHandle;)V

    .line 642
    return-object v1
.end method

.method private blacklist createResolverMultiProfilePagerAdapterForTwoProfiles([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;
    .registers 19
    .param p1, "initialIntents"    # [Landroid/content/Intent;
    .param p3, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)",
            "Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;"
        }
    .end annotation

    .line 656
    .local p2, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object v8, p0

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getCurrentProfile()I

    move-result v0

    .line 657
    .local v0, "selectedProfile":I
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.internal.app.ResolverActivity.EXTRA_CALLING_USER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 658
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    goto :goto_20

    .line 659
    :cond_1c
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    :goto_20
    move-object v9, v1

    .line 660
    .local v9, "intentUser":Landroid/os/UserHandle;
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 661
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 662
    const/4 v0, 0x0

    move v10, v0

    goto :goto_50

    .line 663
    :cond_38
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 664
    const/4 v0, 0x1

    move v10, v0

    goto :goto_50

    .line 667
    :cond_45
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getSelectedProfileExtra()I

    move-result v1

    .line 668
    .local v1, "selectedProfileExtra":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4f

    .line 669
    move v0, v1

    move v10, v0

    goto :goto_50

    .line 675
    .end local v1    # "selectedProfileExtra":I
    :cond_4f
    move v10, v0

    .end local v0    # "selectedProfile":I
    .local v10, "selectedProfile":I
    :goto_50
    iget-object v2, v8, Lcom/android/internal/app/MiuiResolverActivity;->mIntents:Ljava/util/ArrayList;

    .line 678
    const/4 v7, 0x0

    if-nez v10, :cond_58

    move-object/from16 v3, p1

    goto :goto_59

    :cond_58
    move-object v3, v7

    :goto_59
    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz p3, :cond_6d

    .line 680
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 681
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne v0, v1, :cond_6d

    move v5, v12

    goto :goto_6e

    :cond_6d
    move v5, v11

    .line 682
    :goto_6e
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 675
    move-object v0, p0

    move-object v1, p0

    move-object/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/MiuiResolverActivity;->createResolverListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v13

    .line 683
    .local v13, "personalAdapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v14

    .line 684
    .local v14, "workProfileUserHandle":Landroid/os/UserHandle;
    iget-object v2, v8, Lcom/android/internal/app/MiuiResolverActivity;->mIntents:Ljava/util/ArrayList;

    .line 687
    if-ne v10, v12, :cond_85

    move-object/from16 v3, p1

    goto :goto_86

    :cond_85
    move-object v3, v7

    :goto_86
    if-eqz p3, :cond_94

    .line 689
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 690
    invoke-virtual {v14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne v0, v1, :cond_94

    move v5, v12

    goto :goto_95

    :cond_94
    move v5, v11

    .line 684
    :goto_95
    move-object v0, p0

    move-object v1, p0

    move-object/from16 v4, p2

    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/MiuiResolverActivity;->createResolverListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v11

    .line 692
    .local v11, "workAdapter":Lcom/android/internal/app/ResolverListAdapter;
    new-instance v12, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    .line 697
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 698
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 699
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    move-object v0, v12

    move-object v2, v13

    move-object v3, v11

    move v4, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;-><init>(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/ResolverListAdapter;ILandroid/os/UserHandle;Landroid/os/UserHandle;Z)V

    .line 692
    return-object v12
.end method

.method private blacklist createWorkProfileStateReceiver()Landroid/content/BroadcastReceiver;
    .registers 2

    .line 2375
    new-instance v0, Lcom/android/internal/app/MiuiResolverActivity$5;

    invoke-direct {v0, p0}, Lcom/android/internal/app/MiuiResolverActivity$5;-><init>(Lcom/android/internal/app/MiuiResolverActivity;)V

    return-object v0
.end method

.method private static blacklist getAttrColor(Landroid/content/Context;I)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .line 2112
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2113
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 2114
    .local v1, "colorAccent":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2115
    return v1
.end method

.method public static blacklist getLabelRes(Ljava/lang/String;)I
    .registers 2
    .param p0, "action"    # Ljava/lang/String;

    .line 247
    invoke-static {p0}, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;->labelRes:I

    return v0
.end method

.method private blacklist hasManagedProfile()Z
    .registers 7

    .line 1197
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1198
    .local v0, "userManager":Landroid/os/UserManager;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 1199
    return v1

    .line 1203
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 1204
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1205
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_2e

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5
    :try_end_2a
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_2a} :catch_31

    if-eqz v5, :cond_2e

    .line 1206
    const/4 v1, 0x1

    return v1

    .line 1208
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2e
    goto :goto_18

    .line 1211
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2f
    nop

    .line 1212
    return v1

    .line 1209
    :catch_31
    move-exception v2

    .line 1210
    .local v2, "e":Ljava/lang/SecurityException;
    return v1
.end method

.method private blacklist hasWorkProfile()Z
    .registers 2

    .line 750
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private blacklist inactiveListAdapterHasItems()Z
    .registers 3

    .line 2368
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->shouldShowTabs()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2369
    return v1

    .line 2371
    :cond_8
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method private blacklist isAerTest()Z
    .registers 7

    .line 2628
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivityStub;->isInternationalBuild()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 2629
    return v1

    .line 2631
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 2632
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 2633
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 2634
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.afwsamples.testdpc"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 2635
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/app/MiuiChooserActivity;->AER_TEST:Z

    .line 2636
    return v1

    .line 2632
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 2639
    .end local v2    # "i":I
    :cond_30
    sput-boolean v1, Lcom/android/internal/app/MiuiChooserActivity;->AER_TEST:Z

    .line 2640
    return v1
.end method

.method private blacklist isAutolaunching()Z
    .registers 2

    .line 1995
    iget-boolean v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mRegistered:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private blacklist isIntentPicker()Z
    .registers 3

    .line 613
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist isLaunchingTargetInOtherProfile()Z
    .registers 3

    .line 1624
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1625
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 1624
    :goto_13
    return v0
.end method

.method private blacklist isPermissionGranted(Ljava/lang/String;I)I
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1847
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    return v0
.end method

.method static final blacklist isSpecificUriMatch(I)Z
    .registers 2
    .param p0, "match"    # I

    .line 2577
    const/high16 v0, 0xfff0000

    and-int/2addr p0, v0

    .line 2578
    const/high16 v0, 0x300000

    if-lt p0, v0, :cond_d

    const/high16 v0, 0x500000

    if-gt p0, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private blacklist isWorkProfileEnabled()Z
    .registers 4

    .line 1070
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 1071
    .local v0, "workUserHandle":Landroid/os/UserHandle;
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MiuiResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 1073
    .local v1, "userManager":Landroid/os/UserManager;
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1074
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    .line 1073
    :goto_1b
    return v2
.end method

.method static synthetic blacklist lambda$setupProfileTabs$1(Landroid/widget/TabHost;)V
    .registers 3
    .param p0, "tabHost"    # Landroid/widget/TabHost;

    .line 2055
    invoke-virtual {p0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2056
    .local v0, "workTab":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 2057
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 2058
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2059
    return-void
.end method

.method private blacklist makeMyIntent()Landroid/content/Intent;
    .registers 4

    .line 334
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 335
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 341
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 342
    return-object v0
.end method

.method private blacklist maybeAutolaunchActivity()Z
    .registers 4

    .line 1855
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItemCount()I

    move-result v0

    .line 1856
    .local v0, "numberOfProfiles":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    invoke-direct {p0}, Lcom/android/internal/app/MiuiResolverActivity;->maybeAutolaunchIfSingleTarget()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1857
    return v1

    .line 1858
    :cond_10
    const/4 v2, 0x2

    if-ne v0, v2, :cond_38

    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1859
    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1860
    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1861
    invoke-direct {p0}, Lcom/android/internal/app/MiuiResolverActivity;->maybeAutolaunchIfNoAppsOnInactiveTab()Z

    move-result v2

    if-nez v2, :cond_37

    .line 1862
    invoke-direct {p0}, Lcom/android/internal/app/MiuiResolverActivity;->maybeAutolaunchIfCrossProfileSupported()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1863
    :cond_37
    return v1

    .line 1865
    :cond_38
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist maybeAutolaunchIfCrossProfileSupported()Z
    .registers 12

    .line 1914
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 1915
    .local v0, "activeListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v1

    .line 1916
    .local v1, "count":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_f

    .line 1917
    return v3

    .line 1919
    :cond_f
    iget-object v4, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1920
    invoke-virtual {v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v4

    .line 1921
    .local v4, "inactiveListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-virtual {v4}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v5

    if-eq v5, v2, :cond_1c

    .line 1922
    return v3

    .line 1924
    :cond_1c
    nop

    .line 1925
    invoke-virtual {v0, v3, v3}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v5

    .line 1926
    .local v5, "activeProfileTarget":Lcom/android/internal/app/chooser/TargetInfo;
    invoke-virtual {v4, v3, v3}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v6

    .line 1927
    .local v6, "inactiveProfileTarget":Lcom/android/internal/app/chooser/TargetInfo;
    invoke-interface {v5}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v7

    .line 1928
    invoke-interface {v6}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v8

    .line 1927
    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_34

    .line 1929
    return v3

    .line 1931
    :cond_34
    invoke-virtual {p0, v5}, Lcom/android/internal/app/MiuiResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z

    move-result v7

    if-nez v7, :cond_3b

    .line 1932
    return v3

    .line 1934
    :cond_3b
    invoke-interface {v5}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1935
    .local v7, "packageName":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/internal/app/MiuiResolverActivity;->canAppInteractCrossProfiles(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4a

    .line 1936
    return v3

    .line 1939
    :cond_4a
    const/16 v8, 0xa1

    .line 1940
    invoke-static {v8}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v8

    .line 1941
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    .line 1942
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 1941
    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/String;

    .line 1943
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getMetricsCategory()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v3

    .line 1944
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 1945
    invoke-virtual {p0, v5}, Lcom/android/internal/app/MiuiResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1946
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->finish()V

    .line 1947
    return v2
.end method

.method private blacklist maybeAutolaunchIfNoAppsOnInactiveTab()Z
    .registers 6

    .line 1890
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v0

    .line 1891
    .local v0, "count":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_f

    .line 1892
    return v2

    .line 1894
    :cond_f
    iget-object v3, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1895
    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    .line 1896
    .local v3, "inactiveListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v4

    if-eqz v4, :cond_1c

    .line 1897
    return v2

    .line 1899
    :cond_1c
    iget-object v4, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v4

    .line 1900
    invoke-virtual {v4, v2, v2}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v2

    .line 1901
    .local v2, "target":Lcom/android/internal/app/chooser/TargetInfo;
    invoke-virtual {p0, v2}, Lcom/android/internal/app/MiuiResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1902
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->finish()V

    .line 1903
    return v1
.end method

.method private blacklist maybeAutolaunchIfSingleTarget()Z
    .registers 6

    .line 1869
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v0

    .line 1870
    .local v0, "count":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_f

    .line 1871
    return v2

    .line 1874
    :cond_f
    iget-object v3, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 1875
    return v2

    .line 1879
    :cond_1c
    iget-object v3, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    .line 1880
    invoke-virtual {v3, v2, v2}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v3

    .line 1881
    .local v3, "target":Lcom/android/internal/app/chooser/TargetInfo;
    invoke-virtual {p0, v3}, Lcom/android/internal/app/MiuiResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1882
    invoke-virtual {p0, v3}, Lcom/android/internal/app/MiuiResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1883
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->finish()V

    .line 1884
    return v1

    .line 1886
    :cond_33
    return v2
.end method

.method private blacklist maybeCreateHeader(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 5
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 2162
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mHeaderCreatorUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_11

    .line 2163
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mHeaderCreatorUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2164
    return-void

    .line 2166
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->shouldShowTabs()Z

    move-result v0

    const v1, 0x1020016

    if-nez v0, :cond_33

    .line 2167
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getPlaceholderCount()I

    move-result v0

    if-nez v0, :cond_33

    .line 2168
    invoke-virtual {p0, v1}, Lcom/android/internal/app/MiuiResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2169
    .local v0, "titleView":Landroid/widget/TextView;
    if-eqz v0, :cond_33

    .line 2170
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2174
    .end local v0    # "titleView":Landroid/widget/TextView;
    :cond_33
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_38

    .line 2175
    goto :goto_42

    .line 2176
    :cond_38
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/app/MiuiResolverActivity;->mDefaultTitleResId:I

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/app/MiuiResolverActivity;->getTitleForAction(Landroid/content/Intent;I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_42
    nop

    .line 2178
    .local v0, "title":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 2179
    invoke-virtual {p0, v1}, Lcom/android/internal/app/MiuiResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2180
    .local v1, "titleView":Landroid/widget/TextView;
    if-eqz v1, :cond_54

    .line 2181
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2183
    :cond_54
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiResolverActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2186
    .end local v1    # "titleView":Landroid/widget/TextView;
    :cond_57
    const v1, 0x1020006

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MiuiResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2187
    .local v1, "iconView":Landroid/widget/ImageView;
    if-eqz v1, :cond_65

    .line 2188
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverListAdapter;->loadFilteredItemIconTaskAsync(Landroid/widget/ImageView;)V

    .line 2190
    :cond_65
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity;->mHeaderCreatorUser:Landroid/os/UserHandle;

    .line 2191
    return-void
.end method

.method private blacklist maybeHideDivider()V
    .registers 3

    .line 2066
    invoke-direct {p0}, Lcom/android/internal/app/MiuiResolverActivity;->isIntentPicker()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2067
    return-void

    .line 2069
    :cond_7
    const v0, 0x10202af

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2070
    .local v0, "divider":Landroid/view/View;
    if-nez v0, :cond_11

    .line 2071
    return-void

    .line 2073
    :cond_11
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2074
    return-void
.end method

.method private blacklist maybeLogCrossProfileTargetLaunch(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "cti"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "currentUserHandle"    # Landroid/os/UserHandle;

    .line 1685
    invoke-direct {p0}, Lcom/android/internal/app/MiuiResolverActivity;->hasWorkProfile()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_41

    .line 1688
    :cond_11
    const/16 v0, 0x9b

    .line 1689
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 1690
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 1691
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getMetricsCategory()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 1692
    instance-of v3, p1, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    if-eqz v3, :cond_35

    const-string v3, "direct_share"

    goto :goto_37

    :cond_35
    const-string v3, "other_target"

    :goto_37
    aput-object v3, v1, v2

    .line 1691
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 1693
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 1694
    return-void

    .line 1686
    :cond_41
    :goto_41
    return-void
.end method

.method private blacklist prepareIntentForCrossProfileLaunch(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1620
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->fixUris(I)V

    .line 1621
    return-void
.end method

.method private blacklist registerWorkProfileStateReceiver()V
    .registers 8

    .line 1078
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1079
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1080
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1081
    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1082
    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity;->mWorkProfileStateReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/MiuiResolverActivity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1083
    return-void
.end method

.method private blacklist resetAlwaysOrOnceButtonBar()V
    .registers 6

    .line 2250
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/internal/app/MiuiResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    .line 2251
    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2253
    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    .line 2254
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->getFilteredPosition()I

    move-result v2

    .line 2255
    .local v2, "filteredPosition":I
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->useLayoutWithDefault()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2b

    if-eq v2, v1, :cond_2b

    .line 2256
    invoke-direct {p0, v4, v2, v0}, Lcom/android/internal/app/MiuiResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    .line 2257
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2259
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 2260
    return-void

    .line 2264
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 2265
    .local v0, "currentAdapterView":Landroid/widget/ListView;
    if-eqz v0, :cond_47

    .line 2266
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    if-eq v3, v1, :cond_47

    .line 2267
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    invoke-direct {p0, v4, v1, v4}, Lcom/android/internal/app/MiuiResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    .line 2268
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2270
    :cond_47
    return-void
.end method

.method private blacklist resetCheckedItem()V
    .registers 4

    .line 2083
    invoke-direct {p0}, Lcom/android/internal/app/MiuiResolverActivity;->isIntentPicker()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2084
    return-void

    .line 2086
    :cond_7
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mLastSelected:I

    .line 2087
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 2088
    .local v0, "inactiveListView":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-lez v1, :cond_20

    .line 2089
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 2091
    :cond_20
    return-void
.end method

.method private blacklist resetTabsHeaderStyle(Landroid/widget/TabWidget;)V
    .registers 10
    .param p1, "tabWidget"    # Landroid/widget/TabWidget;

    .line 2094
    const v0, 0x1040856

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2095
    .local v0, "workContentDescription":Ljava/lang/String;
    const v1, 0x1040852

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MiuiResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2096
    .local v1, "personalContentDescription":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    invoke-virtual {p1}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_6d

    .line 2097
    invoke-virtual {p1, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2098
    .local v3, "tabView":Landroid/view/View;
    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2099
    .local v4, "title":Landroid/widget/TextView;
    const v5, 0x10301b8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 2100
    const v5, 0x1010212

    invoke-static {p0, v5}, Lcom/android/internal/app/MiuiResolverActivity;->getAttrColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2101
    const/4 v5, 0x0

    .line 2102
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105027d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 2101
    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2103
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    const v6, 0x1040851

    invoke-virtual {p0, v6}, Lcom/android/internal/app/MiuiResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 2104
    invoke-virtual {v3, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6a

    .line 2105
    :cond_56
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    const v6, 0x1040855

    invoke-virtual {p0, v6}, Lcom/android/internal/app/MiuiResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 2106
    invoke-virtual {v3, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2096
    .end local v3    # "tabView":Landroid/view/View;
    .end local v4    # "title":Landroid/widget/TextView;
    :cond_6a
    :goto_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 2109
    .end local v2    # "i":I
    :cond_6d
    return-void
.end method

.method private blacklist safelyStartActivityInternal(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 5
    .param p1, "cti"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 1654
    iget v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mProfileSwitchMessageId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 1655
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1659
    :cond_11
    iget-boolean v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mSafeForwardingMode:Z

    if-nez v0, :cond_20

    .line 1662
    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/internal/app/chooser/TargetInfo;->start(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1663
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MiuiResolverActivity;->onActivityStarted(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1667
    :cond_1f
    return-void

    .line 1672
    :cond_20
    :try_start_20
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, -0x2710

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/MiuiResolverActivity;->startAsCaller(Landroid/content/Intent;I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1673
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MiuiResolverActivity;->onActivityStarted(Lcom/android/internal/app/chooser/TargetInfo;)V
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_2f} :catch_30

    .line 1681
    :cond_2f
    goto :goto_67

    .line 1677
    :catch_30
    move-exception v0

    .line 1678
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to launch as uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/MiuiResolverActivity;->mLaunchedFromUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1679
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getLaunchedFromPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", while running in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1680
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1678
    const-string v2, "MiuiResolverActivity"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1682
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_67
    return-void
.end method

.method private blacklist setAlwaysButtonEnabled(ZIZ)V
    .registers 9
    .param p1, "hasValidSelection"    # Z
    .param p2, "checkedPos"    # I
    .param p3, "filtered"    # Z

    .line 1234
    const/4 v0, 0x0

    .line 1237
    .local v0, "enabled":Z
    if-eqz p1, :cond_2f

    .line 1241
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/app/ResolverListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1242
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    const-string v2, "MiuiResolverActivity"

    if-nez v1, :cond_13

    .line 1243
    const-string v3, "Invalid position supplied to setAlwaysButtonEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    return-void

    .line 1245
    :cond_13
    iget v3, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_1e

    .line 1246
    const-string v3, "Attempted to set selection to resolve info for another user"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    return-void

    .line 1249
    :cond_1e
    const/4 v0, 0x1

    .line 1252
    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104011c

    .line 1253
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1252
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1274
    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2f
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1275
    return-void
.end method

.method private blacklist setButtonBarIgnoreOffset(Z)V
    .registers 4
    .param p1, "ignoreOffset"    # Z

    .line 2239
    const v0, 0x102022e

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2240
    .local v0, "buttonBarContainer":Landroid/view/View;
    if-eqz v0, :cond_15

    .line 2241
    nop

    .line 2242
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 2243
    .local v1, "layoutParams":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iput-boolean p1, v1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    .line 2244
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2246
    .end local v1    # "layoutParams":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_15
    return-void
.end method

.method private blacklist setProfileSwitchMessageId(I)V
    .registers 7
    .param p1, "contentUserHint"    # I

    .line 945
    const/4 v0, -0x2

    if-eq p1, v0, :cond_3b

    .line 946
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p1, v0, :cond_3b

    .line 947
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 948
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 949
    .local v1, "originUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    goto :goto_1d

    .line 950
    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    nop

    .line 951
    .local v2, "originIsManaged":Z
    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v3

    .line 952
    .local v3, "targetIsManaged":Z
    if-eqz v2, :cond_2f

    if-nez v3, :cond_2f

    .line 955
    iget-object v4, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivityStub;->getAndroidForwardIntentToOwnerId()I

    move-result v4

    iput v4, p0, Lcom/android/internal/app/MiuiResolverActivity;->mProfileSwitchMessageId:I

    goto :goto_3b

    .line 956
    :cond_2f
    if-nez v2, :cond_3b

    if-eqz v3, :cond_3b

    .line 959
    iget-object v4, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivityStub;->getAndroidForwardIntentToWorkId()I

    move-result v4

    iput v4, p0, Lcom/android/internal/app/MiuiResolverActivity;->mProfileSwitchMessageId:I

    .line 962
    .end local v0    # "userManager":Landroid/os/UserManager;
    .end local v1    # "originUserInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "originIsManaged":Z
    .end local v3    # "targetIsManaged":Z
    :cond_3b
    :goto_3b
    return-void
.end method

.method private blacklist setupAdapterListView(Landroid/widget/ListView;Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;)V
    .registers 4
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "listener"    # Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;

    .line 2150
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2151
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 2153
    iget-boolean v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v0, :cond_e

    .line 2154
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 2156
    :cond_e
    return-void
.end method

.method private blacklist setupProfileTabs()V
    .registers 7

    .line 1999
    invoke-direct {p0}, Lcom/android/internal/app/MiuiResolverActivity;->maybeHideDivider()V

    .line 2000
    const v0, 0x1020453

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    .line 2001
    .local v0, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 2002
    const v1, 0x1020452

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MiuiResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager;

    .line 2003
    .local v2, "viewPager":Lcom/android/internal/widget/ViewPager;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ViewPager;->setSaveEnabled(Z)V

    .line 2004
    const-string v4, "personal"

    invoke-virtual {v0, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 2005
    invoke-virtual {v4, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 2006
    const v5, 0x1040851

    invoke-virtual {p0, v5}, Lcom/android/internal/app/MiuiResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 2007
    .local v4, "tabSpec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v0, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 2009
    const-string v5, "work"

    invoke-virtual {v0, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 2010
    invoke-virtual {v5, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 2011
    const v5, 0x1040855

    invoke-virtual {p0, v5}, Lcom/android/internal/app/MiuiResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 2012
    .end local v4    # "tabSpec":Landroid/widget/TabHost$TabSpec;
    .local v1, "tabSpec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 2014
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    .line 2015
    .local v4, "tabWidget":Landroid/widget/TabWidget;
    invoke-virtual {v4, v3}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 2016
    invoke-direct {p0, v4}, Lcom/android/internal/app/MiuiResolverActivity;->resetTabsHeaderStyle(Landroid/widget/TabWidget;)V

    .line 2017
    invoke-direct {p0, v0}, Lcom/android/internal/app/MiuiResolverActivity;->updateActiveTabStyle(Landroid/widget/TabHost;)V

    .line 2019
    new-instance v5, Lcom/android/internal/app/MiuiResolverActivity$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v4, v0, v2}, Lcom/android/internal/app/MiuiResolverActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/MiuiResolverActivity;Landroid/widget/TabWidget;Landroid/widget/TabHost;Lcom/android/internal/widget/ViewPager;)V

    invoke-virtual {v0, v5}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 2037
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ViewPager;->setVisibility(I)V

    .line 2038
    iget-object v3, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 2039
    iget-object v3, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    new-instance v5, Lcom/android/internal/app/MiuiResolverActivity$4;

    invoke-direct {v5, p0, v0}, Lcom/android/internal/app/MiuiResolverActivity$4;-><init>(Lcom/android/internal/app/MiuiResolverActivity;Landroid/widget/TabHost;)V

    invoke-virtual {v3, v5}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->setOnProfileSelectedListener(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;)V

    .line 2053
    iget-object v3, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    new-instance v5, Lcom/android/internal/app/MiuiResolverActivity$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Lcom/android/internal/app/MiuiResolverActivity$$ExternalSyntheticLambda1;-><init>(Landroid/widget/TabHost;)V

    invoke-virtual {v3, v5}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->setOnSwitchOnWorkSelectedListener(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;)V

    .line 2061
    return-void
.end method

.method private blacklist setupViewVisibilities()V
    .registers 3

    .line 2125
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 2126
    .local v0, "activeListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->shouldShowEmptyStateScreen(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 2127
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiResolverActivity;->addUseDifferentAppLabelIfNecessary(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 2129
    :cond_11
    return-void
.end method

.method private blacklist shouldBlockThirdDesktop(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1370
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.miui.sec.THIRD_DESKTOP"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "getModeAndList"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 1371
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "mode"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1372
    .local v2, "mode":I
    const-string v3, "list"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1373
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    if-eqz v3, :cond_29

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_2e

    if-eqz v5, :cond_29

    move v5, v4

    goto :goto_2a

    :cond_29
    move v5, v0

    :goto_2a
    if-ne v2, v5, :cond_2d

    move v0, v4

    :cond_2d
    return v0

    .line 1374
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "mode":I
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_2e
    move-exception v1

    .line 1375
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MiuiResolverActivity"

    const-string v3, "get third desktop provider exception!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1377
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private blacklist startAsCaller(Landroid/content/Intent;I)Z
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 2646
    invoke-static {}, Lcom/android/internal/app/ResolverActivityStub;->getInstance()Lcom/android/internal/app/ResolverActivityStub;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p2, p1}, Lcom/android/internal/app/ResolverActivityStub;->checkStartShareActivity(Landroid/app/Activity;Landroid/os/Bundle;ILandroid/content/Intent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    .line 2648
    return v2

    .line 2651
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/android/internal/app/MiuiResolverActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 2652
    return v2
.end method

.method private blacklist supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z
    .registers 6
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 1217
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1219
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_f} :catch_15

    const/16 v3, 0x15

    if-lt v2, v3, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0

    .line 1220
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_15
    move-exception v1

    .line 1221
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private blacklist updateActiveTabStyle(Landroid/widget/TabHost;)V
    .registers 4
    .param p1, "tabHost"    # Landroid/widget/TabHost;

    .line 2119
    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2120
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2121
    .local v0, "title":Landroid/widget/TextView;
    const v1, 0x1010435

    invoke-static {p0, v1}, Lcom/android/internal/app/MiuiResolverActivity;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2122
    return-void
.end method

.method private blacklist updateIntentPickerPaddings()V
    .registers 8

    .line 843
    const v0, 0x1020544

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 844
    .local v0, "titleCont":Landroid/view/View;
    nop

    .line 845
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 846
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 847
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 848
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105027e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 844
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 849
    const v1, 0x102022d

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MiuiResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 850
    .local v1, "buttonBar":Landroid/view/View;
    nop

    .line 851
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 852
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105026d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 853
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 854
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 850
    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 855
    return-void
.end method


# virtual methods
.method public blacklist addUseDifferentAppLabelIfNecessary(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 8
    .param p1, "adapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 2136
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v0

    .line 2137
    .local v0, "useHeader":Z
    if-eqz v0, :cond_2f

    .line 2138
    const v1, 0x10204fe

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MiuiResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 2139
    .local v1, "stub":Landroid/widget/FrameLayout;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2140
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x10900fd

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2142
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->shouldShowTabs()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 2143
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 2145
    :cond_2c
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2147
    .end local v1    # "stub":Landroid/widget/FrameLayout;
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_2f
    return-void
.end method

.method protected blacklist appliedThemeResId()I
    .registers 2

    .line 703
    const v0, 0x10303fd

    return v0
.end method

.method protected blacklist applyFooterView(I)V
    .registers 6
    .param p1, "height"    # I

    .line 788
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    if-nez v0, :cond_10

    .line 789
    new-instance v0, Landroid/widget/Space;

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    goto :goto_1d

    .line 791
    :cond_10
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    check-cast v0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    .line 792
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 794
    :goto_1d
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/internal/app/MiuiResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 796
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    check-cast v0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    .line 797
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 798
    return-void
.end method

.method protected blacklist createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;
    .registers 10
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 1774
    new-instance v7, Lcom/android/internal/app/ResolverListController;

    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 1777
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1778
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/MiuiResolverActivity;->mLaunchedFromUid:I

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ResolverListController;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1774
    return-object v7
.end method

.method protected blacklist createMultiProfilePagerAdapter([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
    .registers 6
    .param p1, "initialIntents"    # [Landroid/content/Intent;
    .param p3, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)",
            "Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;"
        }
    .end annotation

    .line 620
    .local p2, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 621
    .local v0, "resolverMultiProfilePagerAdapter":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->shouldShowTabs()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 622
    nop

    .line 623
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/MiuiResolverActivity;->createResolverMultiProfilePagerAdapterForTwoProfiles([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    move-result-object v0

    goto :goto_11

    .line 626
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/MiuiResolverActivity;->createResolverMultiProfilePagerAdapterForOneProfile([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    move-result-object v0

    .line 629
    :goto_11
    return-object v0
.end method

.method protected blacklist createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;
    .registers 3
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 317
    new-instance v0, Lcom/android/internal/app/MiuiResolverActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/MiuiResolverActivity$1;-><init>(Lcom/android/internal/app/MiuiResolverActivity;Lcom/android/internal/app/ResolverListAdapter;)V

    return-object v0
.end method

.method protected blacklist createResolverListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;
    .registers 21
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

    .line 1762
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v0, "MiuiResolverActivity"

    const-string v1, "createResolverListAdapter in ResolverActivity"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1765
    .local v0, "startIntent":Landroid/content/Intent;
    nop

    .line 1766
    const-string v1, "is_audio_capture_device"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1767
    .local v1, "isAudioCaptureDevice":Z
    new-instance v2, Lcom/android/internal/app/ResolverListAdapter;

    .line 1768
    move-object v12, p0

    move-object/from16 v13, p6

    invoke-virtual {p0, v13}, Lcom/android/internal/app/MiuiResolverActivity;->createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;

    move-result-object v9

    move-object v3, v2

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object v10, p0

    move v11, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/app/ResolverListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;Z)V

    .line 1767
    return-object v2
.end method

.method public blacklist customResolver()V
    .registers 2

    .line 2321
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivityStub;->customResolver()V

    .line 2322
    return-void
.end method

.method protected blacklist fetchWorkProfileUserProfile()Landroid/os/UserHandle;
    .registers 5

    .line 739
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    .line 740
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 741
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 742
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 743
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/MiuiResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    .line 745
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2f
    goto :goto_17

    .line 746
    :cond_30
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    return-object v1
.end method

.method public whitelist finish()V
    .registers 1

    .line 1192
    invoke-super {p0}, Lcom/android/internal/compat/AlertActivity2;->finish()V

    .line 1193
    return-void
.end method

.method protected blacklist getCurrentProfile()I
    .registers 2

    .line 726
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public blacklist getLayoutResource()I
    .registers 2

    .line 919
    const v0, 0x10900ff

    return v0
.end method

.method protected blacklist getMetricsCategory()Ljava/lang/String;
    .registers 2

    .line 2331
    const-string v0, "intent_resolver"

    return-object v0
.end method

.method public blacklist getPersonalProfileUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 732
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRecommendable()Z
    .registers 2

    .line 2326
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivityStub;->getRecommendable()Z

    move-result v0

    return v0
.end method

.method protected blacklist getReferrerPackageName()Ljava/lang/String;
    .registers 4

    .line 909
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    .line 910
    .local v0, "referrer":Landroid/net/Uri;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android-app"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 911
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 913
    :cond_17
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 3
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .line 1360
    return-object p2
.end method

.method blacklist getSelectedProfileExtra()I
    .registers 5

    .line 713
    const/4 v0, -0x1

    .line 714
    .local v0, "selectedProfile":I
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.internal.app.ResolverActivity.EXTRA_SELECTED_PROFILE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 715
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 716
    if-eqz v0, :cond_3b

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    goto :goto_3b

    .line 717
    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.android.internal.app.ResolverActivity.EXTRA_SELECTED_PROFILE has invalid value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Must be either ResolverActivity.PROFILE_PERSONAL or ResolverActivity.PROFILE_WORK."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 722
    :cond_3b
    :goto_3b
    return v0
.end method

.method public blacklist getTargetIntent()Landroid/content/Intent;
    .registers 3

    .line 905
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_13

    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mIntents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_13
    return-object v0
.end method

.method protected blacklist getTitleForAction(Landroid/content/Intent;I)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "defaultTitleRes"    # I

    .line 981
    iget-boolean v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolvingHome:Z

    if-eqz v0, :cond_7

    .line 982
    sget-object v0, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    goto :goto_f

    .line 983
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    move-result-object v0

    :goto_f
    nop

    .line 987
    .local v0, "title":Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 988
    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getFilteredPosition()I

    move-result v1

    if-ltz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 989
    .local v1, "named":Z
    :goto_1f
    sget-object v2, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    if-ne v0, v2, :cond_2a

    if-eqz p2, :cond_2a

    .line 990
    invoke-virtual {p0, p2}, Lcom/android/internal/app/MiuiResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 997
    :cond_2a
    iget v2, v0, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;->titleRes:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/MiuiResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected blacklist getWorkProfileUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 735
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public blacklist isClosable(Landroid/content/Context;)Z
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 2657
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mAlert:Lcom/android/internal/compat/AlertController;

    check-cast v0, Lcom/android/internal/compat/AlertControllerWrapper2;

    invoke-virtual {v0}, Lcom/android/internal/compat/AlertControllerWrapper2;->getnotifyOpenStyle()Z

    move-result v0

    .line 2659
    .local v0, "isOpenStyle":Z
    const/4 v1, 0x0

    :try_start_9
    const-string v2, "miuix.stub.MiuixStub"

    .line 2660
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 2659
    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 2661
    .local v2, "builderClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "isClosable"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2662
    .local v3, "declaredMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2663
    const/4 v6, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-virtual {v3, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3d} :catch_3e

    return v1

    .line 2664
    .end local v2    # "builderClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "declaredMethod":Ljava/lang/reflect/Method;
    :catch_3e
    move-exception v2

    .line 2665
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MiuiResolverActivity"

    const-string v4, "call miuix isClosable failed: "

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2667
    .end local v2    # "e":Ljava/lang/Exception;
    const-string v2, "should be unreachable"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    return v1
.end method

.method synthetic blacklist lambda$setupProfileTabs$0$com-android-internal-app-MiuiResolverActivity(Landroid/widget/TabWidget;Landroid/widget/TabHost;Lcom/android/internal/widget/ViewPager;Ljava/lang/String;)V
    .registers 9
    .param p1, "tabWidget"    # Landroid/widget/TabWidget;
    .param p2, "tabHost"    # Landroid/widget/TabHost;
    .param p3, "viewPager"    # Lcom/android/internal/widget/ViewPager;
    .param p4, "tabId"    # Ljava/lang/String;

    .line 2020
    invoke-direct {p0, p1}, Lcom/android/internal/app/MiuiResolverActivity;->resetTabsHeaderStyle(Landroid/widget/TabWidget;)V

    .line 2021
    invoke-direct {p0, p2}, Lcom/android/internal/app/MiuiResolverActivity;->updateActiveTabStyle(Landroid/widget/TabHost;)V

    .line 2022
    const-string v0, "personal"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    .line 2023
    invoke-virtual {p3, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_17

    .line 2025
    :cond_14
    invoke-virtual {p3, v2}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    .line 2027
    :goto_17
    invoke-direct {p0}, Lcom/android/internal/app/MiuiResolverActivity;->setupViewVisibilities()V

    .line 2028
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->maybeLogProfileChange()V

    .line 2029
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->onProfileTabSelected()V

    .line 2030
    const/16 v0, 0x9c

    .line 2031
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 2032
    invoke-virtual {p3}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    .line 2033
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getMetricsCategory()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 2034
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 2035
    return-void
.end method

.method protected blacklist maybeLogProfileChange()V
    .registers 1

    .line 2621
    return-void
.end method

.method public whitelist onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "result"    # Landroid/content/Intent;

    .line 348
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/compat/AlertActivity2;->onActivityResult(IILandroid/content/Intent;)V

    .line 349
    const/4 v0, -0x1

    if-ne p2, v0, :cond_f

    if-eqz p3, :cond_f

    .line 350
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, -0x2710

    invoke-virtual {p0, p3, v0, v1, v2}, Lcom/android/internal/app/MiuiResolverActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 352
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->finish()V

    .line 353
    return-void
.end method

.method public blacklist onActivityStarted(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 2
    .param p1, "cti"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 1732
    return-void
.end method

.method protected blacklist onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 801
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    .line 803
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    iget v0, v0, Landroid/graphics/Insets;->left:I

    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->top:I

    iget-object v3, p0, Lcom/android/internal/app/MiuiResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->right:I

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->setPadding(IIII)V

    .line 806
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->resetButtonBar()V

    .line 809
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->shouldAddFooterView()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 810
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiResolverActivity;->applyFooterView(I)V

    .line 813
    :cond_26
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onButtonClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .line 1278
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1279
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 1280
    .local v1, "listView":Landroid/widget/ListView;
    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    .line 1281
    .local v2, "currentListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1282
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->getFilteredPosition()I

    move-result v3

    goto :goto_21

    .line 1283
    :cond_1d
    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    :goto_21
    nop

    .line 1284
    .local v3, "which":I
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 1285
    .local v4, "hasIndexBeenFiltered":Z
    const v6, 0x102022c

    if-ne v0, v6, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v5, 0x0

    :goto_2f
    invoke-virtual {p0, v3, v5, v4}, Lcom/android/internal/app/MiuiResolverActivity;->startSelected(IZZ)V

    .line 1286
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 818
    invoke-super {p0, p1}, Lcom/android/internal/compat/AlertActivity2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 833
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mChooserActivityStubImpl:Lcom/android/internal/app/ChooserActivityStub;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ChooserActivityStub;->isInterceptedByMiAppStore(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 834
    return-void

    .line 836
    :cond_c
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    if-eqz v0, :cond_13

    .line 837
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->handlePackagesChanged()V

    .line 840
    :cond_13
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 359
    invoke-direct {p0}, Lcom/android/internal/app/MiuiResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v8

    .line 360
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v9

    .line 361
    .local v9, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_27

    if-eqz v9, :cond_27

    .line 363
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_27

    .line 364
    const-string v0, "android.intent.category.HOME"

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 366
    iput-boolean v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolvingHome:Z

    .line 369
    :cond_27
    invoke-virtual {p0, v1}, Lcom/android/internal/app/MiuiResolverActivity;->setSafeForwardingMode(Z)V

    .line 371
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/MiuiResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 372
    return-void
.end method

.method protected blacklist onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
    .registers 27
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "defaultTitleRes"    # I
    .param p5, "initialIntents"    # [Landroid/content/Intent;
    .param p7, "supportsAlwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "I[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 391
    .local p6, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Application.getProcessName() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiResolverActivity"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiResolverActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "style"

    const-string v2, "AlertDialog.Theme.DayNight"

    if-eqz v0, :cond_5c

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "miuix.stub"

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v14, v0

    .local v0, "themeId":I
    goto :goto_69

    .line 399
    .end local v0    # "themeId":I
    :cond_5c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiResolverActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 399
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v14, v0

    .line 402
    .local v14, "themeId":I
    :goto_69
    invoke-virtual {v7, v14}, Lcom/android/internal/app/MiuiResolverActivity;->setTheme(I)V

    .line 405
    new-instance v0, Lcom/android/internal/app/ResolverActivityStubImpl;

    invoke-direct {v0}, Lcom/android/internal/app/ResolverActivityStubImpl;-><init>()V

    iput-object v0, v7, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    .line 406
    new-instance v0, Lcom/android/internal/app/ChooserActivityStubImpl;

    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivityStubImpl;-><init>()V

    iput-object v0, v7, Lcom/android/internal/app/MiuiResolverActivity;->mChooserActivityStubImpl:Lcom/android/internal/app/ChooserActivityStub;

    .line 407
    invoke-static {}, Lcom/android/internal/app/ResolverActivityStub;->getInstance()Lcom/android/internal/app/ResolverActivityStub;

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImplSingleton:Lcom/android/internal/app/ResolverActivityStub;

    .line 408
    iget-object v0, v7, Lcom/android/internal/app/MiuiResolverActivity;->mChooserActivityStubImpl:Lcom/android/internal/app/ChooserActivityStub;

    invoke-virtual {v0, v8, v11}, Lcom/android/internal/app/ChooserActivityStub;->dealWithActonViewIntent(Landroid/content/Intent;[Landroid/content/Intent;)V

    .line 409
    invoke-super/range {p0 .. p1}, Lcom/android/internal/compat/AlertActivity2;->onCreate(Landroid/os/Bundle;)V

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    .line 411
    .local v15, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v6, 0x1

    iput v6, v15, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getContentUserHint()I

    move-result v0

    invoke-direct {v7, v0}, Lcom/android/internal/app/MiuiResolverActivity;->setProfileSwitchMessageId(I)V

    .line 419
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiResolverActivity;->getLaunchedFromUid()I

    move-result v0

    iput v0, v7, Lcom/android/internal/app/MiuiResolverActivity;->mLaunchedFromUid:I

    .line 421
    iget-object v0, v7, Lcom/android/internal/app/MiuiResolverActivity;->mChooserActivityStubImpl:Lcom/android/internal/app/ChooserActivityStub;

    invoke-virtual {v0, v8}, Lcom/android/internal/app/ChooserActivityStub;->notAllowHomeLaunchedAgain(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiResolverActivity;->finish()V

    .line 423
    return-void

    .line 426
    :cond_b3
    iget v0, v7, Lcom/android/internal/app/MiuiResolverActivity;->mLaunchedFromUid:I

    if-ltz v0, :cond_282

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_c1

    move/from16 v18, v14

    goto/16 :goto_284

    .line 432
    :cond_c1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/app/MiuiResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/app/MiuiResolverActivity;->mReferrerPackage:Ljava/lang/String;

    .line 437
    iget-object v0, v7, Lcom/android/internal/app/MiuiResolverActivity;->mIntents:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 440
    iget-object v0, v7, Lcom/android/internal/app/MiuiResolverActivity;->mChooserActivityStubImpl:Lcom/android/internal/app/ChooserActivityStub;

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/app/ChooserActivityStub;->canInterceptByMiAppStore(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 441
    iget-object v0, v7, Lcom/android/internal/app/MiuiResolverActivity;->mChooserActivityStubImpl:Lcom/android/internal/app/ChooserActivityStub;

    .line 442
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/internal/app/MiuiResolverActivity;->createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;

    move-result-object v3

    const/4 v4, 0x0

    iget v5, v7, Lcom/android/internal/app/MiuiResolverActivity;->mLaunchedFromUid:I

    .line 441
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/ChooserActivityStub;->startInterceptByMiAppStore(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/Object;Lcom/android/internal/app/ResolverRankerServiceResolverComparator;I)V

    .line 443
    return-void

    .line 445
    :cond_f9
    if-nez v13, :cond_103

    iget-object v0, v7, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivityStub;->getRecommendable()Z

    move-result v0

    if-eqz v0, :cond_106

    .line 446
    :cond_103
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiResolverActivity;->notifyOpenStyle()V

    .line 448
    :cond_106
    iput-boolean v6, v7, Lcom/android/internal/app/MiuiResolverActivity;->mRegistered:Z

    .line 449
    iget-object v2, v7, Lcom/android/internal/app/MiuiResolverActivity;->mIntents:Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v18, v14

    move v14, v5

    .end local v14    # "themeId":I
    .local v18, "themeId":I
    move/from16 v5, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/MiuiResolverActivity;->createResolverListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    .line 450
    const v0, 0x1020451

    invoke-virtual {v7, v0}, Lcom/android/internal/app/MiuiResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/app/MiuiResolverActivity;->mProfileView:Landroid/view/View;

    .line 451
    iget-object v0, v7, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    iget-object v2, v7, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v4, v7, Lcom/android/internal/app/MiuiResolverActivity;->mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;

    iget-object v5, v7, Lcom/android/internal/app/MiuiResolverActivity;->mProfileView:Landroid/view/View;

    move-object/from16 v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivityStub;->init(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Landroid/app/Activity;Lcom/android/internal/compat/AlertController$AlertParams;Landroid/view/View;)V

    .line 452
    iget-object v0, v7, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImplSingleton:Lcom/android/internal/app/ResolverActivityStub;

    iget-object v2, v7, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v4, v7, Lcom/android/internal/app/MiuiResolverActivity;->mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;

    iget-object v5, v7, Lcom/android/internal/app/MiuiResolverActivity;->mProfileView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivityStub;->init(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Landroid/app/Activity;Lcom/android/internal/compat/AlertController$AlertParams;Landroid/view/View;)V

    .line 453
    iget-object v0, v7, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v0, v13}, Lcom/android/internal/app/ResolverActivityStub;->setAlwaysUse(Z)V

    .line 454
    iget-object v0, v7, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    iget-object v1, v7, Lcom/android/internal/app/MiuiResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v11, v12}, Lcom/android/internal/app/ResolverActivityStub;->configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;)V

    .line 455
    iget-object v0, v7, Lcom/android/internal/app/MiuiResolverActivity;->mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/compat/AlertController$AlertParams;->mView:Landroid/view/View;

    iput-object v0, v7, Lcom/android/internal/app/MiuiResolverActivity;->mCustomView:Landroid/view/View;

    .line 458
    iput-object v9, v7, Lcom/android/internal/app/MiuiResolverActivity;->mTitle:Ljava/lang/CharSequence;

    .line 459
    iput v10, v7, Lcom/android/internal/app/MiuiResolverActivity;->mDefaultTitleResId:I

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiResolverActivity;->fetchWorkProfileUserProfile()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/app/MiuiResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    .line 462
    iput-boolean v13, v7, Lcom/android/internal/app/MiuiResolverActivity;->mSupportsAlwaysUseOption:Z

    .line 469
    if-eqz v13, :cond_178

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiResolverActivity;->isVoiceInteraction()Z

    move-result v0

    if-nez v0, :cond_178

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiResolverActivity;->shouldShowTabs()Z

    move-result v0

    if-nez v0, :cond_178

    const/4 v6, 0x1

    goto :goto_179

    :cond_178
    move v6, v14

    :goto_179
    move v0, v6

    .line 471
    .local v0, "filterLastUsed":Z
    invoke-virtual {v7, v11, v12, v0}, Lcom/android/internal/app/MiuiResolverActivity;->createMultiProfilePagerAdapter([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    move-result-object v1

    iput-object v1, v7, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiResolverActivity;->shouldShowTabs()Z

    move-result v1

    if-eqz v1, :cond_19d

    .line 504
    iget-object v1, v7, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 505
    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    .line 504
    invoke-virtual {v7, v1}, Lcom/android/internal/app/MiuiResolverActivity;->createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;

    move-result-object v1

    iput-object v1, v7, Lcom/android/internal/app/MiuiResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v7, v2, v3, v14}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 509
    :cond_19d
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/android/internal/app/MiuiResolverActivity;->mRegistered:Z

    .line 513
    const v2, 0x1020266

    invoke-virtual {v7, v2}, Lcom/android/internal/app/MiuiResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 514
    .local v2, "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    if-eqz v2, :cond_1be

    .line 515
    new-instance v3, Lcom/android/internal/app/MiuiResolverActivity$2;

    invoke-direct {v3, v7}, Lcom/android/internal/app/MiuiResolverActivity$2;-><init>(Lcom/android/internal/app/MiuiResolverActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiResolverActivity;->isVoiceInteraction()Z

    move-result v3

    if-eqz v3, :cond_1bc

    .line 530
    invoke-virtual {v2, v14}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsed(Z)V

    .line 539
    :cond_1bc
    iput-object v2, v7, Lcom/android/internal/app/MiuiResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 542
    :cond_1be
    if-nez v9, :cond_1c5

    .line 543
    invoke-virtual {v7, v8, v10}, Lcom/android/internal/app/MiuiResolverActivity;->getTitleForAction(Landroid/content/Intent;I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v9, v3

    .line 545
    .end local p3    # "title":Ljava/lang/CharSequence;
    .local v9, "title":Ljava/lang/CharSequence;
    :cond_1c5
    iget-object v3, v7, Lcom/android/internal/app/MiuiResolverActivity;->mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;

    iput-object v9, v3, Lcom/android/internal/compat/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 549
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x20000

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 551
    if-eqz v13, :cond_21c

    iget-object v3, v7, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivityStub;->getRecommendable()Z

    move-result v3

    if-nez v3, :cond_21c

    .line 552
    iget-object v3, v7, Lcom/android/internal/app/MiuiResolverActivity;->mCustomView:Landroid/view/View;

    iget-object v4, v7, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivityStub;->getAlwaysoptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 553
    .local v3, "alwaysOption":Landroid/widget/CheckBox;
    if-eqz v3, :cond_217

    .line 554
    invoke-virtual {v3, v14}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 555
    iget-object v4, v7, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivityStub;->getShowMoreResolverButton()Z

    move-result v4

    if-eqz v4, :cond_213

    iget-object v4, v7, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    .line 556
    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivityStub;->isInternationalBuild()Z

    move-result v4

    if-eqz v4, :cond_213

    iget-object v4, v7, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v4, v4, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    if-eqz v4, :cond_213

    iget-object v4, v7, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v4, v4, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    .line 558
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_213

    .line 559
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_21c

    .line 561
    :cond_213
    invoke-virtual {v3, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_21c

    .line 564
    :cond_217
    iget-object v1, v7, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v1, v14}, Lcom/android/internal/app/ResolverActivityStub;->setAlwaysUse(Z)V

    .line 569
    .end local v3    # "alwaysOption":Landroid/widget/CheckBox;
    :cond_21c
    :goto_21c
    iget-object v1, v7, Lcom/android/internal/app/MiuiResolverActivity;->mProfileView:Landroid/view/View;

    if-eqz v1, :cond_22d

    .line 572
    new-instance v3, Lcom/android/internal/app/MiuiResolverActivity$3;

    invoke-direct {v3, v7}, Lcom/android/internal/app/MiuiResolverActivity$3;-><init>(Lcom/android/internal/app/MiuiResolverActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    iget-object v1, v7, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivityStub;->bindProfileView()V

    .line 596
    :cond_22d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiResolverActivity;->isVoiceInteraction()Z

    move-result v1

    if-eqz v1, :cond_236

    .line 597
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiResolverActivity;->sendVoiceChoicesIfNeeded()V

    .line 601
    :cond_236
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 604
    .local v1, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, v7, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v3

    if-eqz v3, :cond_245

    .line 605
    const/16 v3, 0x1c3

    goto :goto_247

    .line 606
    :cond_245
    const/16 v3, 0x1c5

    :goto_247
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 608
    if-eqz v1, :cond_271

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_273

    :cond_271
    const-string v5, ""

    :goto_273
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 604
    invoke-static {v7, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiResolverActivity;->setupAlert()V

    .line 610
    return-void

    .line 426
    .end local v0    # "filterLastUsed":Z
    .end local v1    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    .end local v9    # "title":Ljava/lang/CharSequence;
    .end local v18    # "themeId":I
    .restart local v14    # "themeId":I
    .restart local p3    # "title":Ljava/lang/CharSequence;
    :cond_282
    move/from16 v18, v14

    .line 428
    .end local v14    # "themeId":I
    .restart local v18    # "themeId":I
    :goto_284
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiResolverActivity;->finish()V

    .line 429
    return-void
.end method

.method protected greylist onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .registers 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 382
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/MiuiResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 384
    return-void
.end method

.method protected whitelist onDestroy()V
    .registers 3

    .line 1137
    invoke-super {p0}, Lcom/android/internal/compat/AlertActivity2;->onDestroy()V

    .line 1139
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mChooserActivityStubImpl:Lcom/android/internal/app/ChooserActivityStub;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ChooserActivityStub;->isInterceptedByMiAppStore(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1140
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mChooserActivityStubImpl:Lcom/android/internal/app/ChooserActivityStub;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ChooserActivityStub;->stopInterceptByMiAppStore(Landroid/app/Activity;)V

    .line 1141
    return-void

    .line 1144
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/MiuiResolverActivity$PickTargetOptionRequest;

    if-eqz v0, :cond_1e

    .line 1145
    invoke-virtual {v0}, Lcom/android/internal/app/MiuiResolverActivity$PickTargetOptionRequest;->cancel()V

    .line 1153
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivityStub;->getPostListReadyRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 1154
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivityStub;->getPostListReadyRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1155
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivityStub;->setPostListReadyRunnable(Ljava/lang/Runnable;)V

    .line 1157
    :cond_39
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    if-eqz v0, :cond_48

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    if-eqz v0, :cond_48

    .line 1158
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListController;->destroy()V

    .line 1160
    :cond_48
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivityStub;->onDestroy()V

    .line 1161
    return-void
.end method

.method public blacklist onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 5
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 2336
    const/4 v0, 0x1

    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    if-ne p1, v1, :cond_a

    .line 2337
    invoke-virtual {p1, v0}, Lcom/android/internal/app/ResolverListAdapter;->rebuildList(Z)Z

    .line 2340
    :cond_a
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    if-nez v1, :cond_f

    .line 2341
    return-void

    .line 2343
    :cond_f
    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    if-ne p1, v1, :cond_4d

    .line 2344
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2345
    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->isWaitingToEnableWorkProfile()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2350
    return-void

    .line 2352
    :cond_2c
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildActiveTab(Z)Z

    move-result v0

    .line 2353
    .local v0, "listRebuilt":Z
    if-eqz v0, :cond_4c

    .line 2354
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2355
    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    .line 2356
    .local v1, "activeListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->notifyDataSetChanged()V

    .line 2357
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_4c

    invoke-direct {p0}, Lcom/android/internal/app/MiuiResolverActivity;->inactiveListAdapterHasItems()Z

    move-result v2

    if-nez v2, :cond_4c

    .line 2359
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->finish()V

    .line 2362
    .end local v0    # "listRebuilt":Z
    .end local v1    # "activeListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    :cond_4c
    goto :goto_52

    .line 2363
    :cond_4d
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->clearInactiveProfileCache()V

    .line 2365
    :goto_52
    return-void
.end method

.method blacklist onHorizontalSwipeStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 2063
    return-void
.end method

.method protected blacklist onListRebuilt(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 6
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 1414
    new-instance v0, Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;

    invoke-direct {v0, p0}, Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;-><init>(Lcom/android/internal/app/MiuiResolverActivity;)V

    .line 1415
    .local v0, "listener":Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/app/MiuiResolverActivity;->setupAdapterListView(Landroid/widget/ListView;Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;)V

    .line 1416
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->shouldShowTabs()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-direct {p0}, Lcom/android/internal/app/MiuiResolverActivity;->isIntentPicker()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1417
    const v1, 0x1020266

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MiuiResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 1418
    .local v1, "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    if-eqz v1, :cond_3f

    .line 1419
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1420
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->useLayoutWithDefault()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1421
    const v3, 0x1050278

    goto :goto_38

    .line 1422
    :cond_35
    const v3, 0x1050279

    .line 1420
    :goto_38
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1419
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setMaxCollapsedHeight(I)V

    .line 1425
    .end local v1    # "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    :cond_3f
    return-void
.end method

.method public final blacklist onPostListReady(Lcom/android/internal/app/ResolverListAdapter;ZZ)V
    .registers 4
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p2, "doPostProcessing"    # Z
    .param p3, "rebuildCompleted"    # Z

    .line 1410
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MiuiResolverActivity;->onListRebuilt(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 1411
    return-void
.end method

.method public blacklist onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 3
    .param p1, "adapterView"    # Landroid/widget/AbsListView;
    .param p2, "adapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 2625
    return-void
.end method

.method protected blacklist onProfileTabSelected()V
    .registers 1

    .line 2080
    return-void
.end method

.method protected whitelist onRestart()V
    .registers 4

    .line 1011
    invoke-super {p0}, Lcom/android/internal/compat/AlertActivity2;->onRestart()V

    .line 1013
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mChooserActivityStubImpl:Lcom/android/internal/app/ChooserActivityStub;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ChooserActivityStub;->isInterceptedByMiAppStore(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1014
    return-void

    .line 1017
    :cond_c
    iget-boolean v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mRegistered:Z

    if-nez v0, :cond_1d

    .line 1021
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/app/ResolverActivityStub;->registerPackageMonitor(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 1034
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mRegistered:Z

    .line 1046
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->handlePackagesChanged()V

    .line 1047
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mProfileView:Landroid/view/View;

    if-eqz v0, :cond_2b

    .line 1048
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivityStub;->bindProfileView()V

    .line 1054
    :cond_2b
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1174
    invoke-super {p0, p1}, Lcom/android/internal/compat/AlertActivity2;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1183
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mChooserActivityStubImpl:Lcom/android/internal/app/ChooserActivityStub;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ChooserActivityStub;->isInterceptedByMiAppStore(Landroid/app/Activity;)Z

    .line 1184
    return-void
.end method

.method protected whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1165
    invoke-super {p0, p1}, Lcom/android/internal/compat/AlertActivity2;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1170
    return-void
.end method

.method protected whitelist onStart()V
    .registers 3

    .line 1058
    invoke-super {p0}, Lcom/android/internal/compat/AlertActivity2;->onStart()V

    .line 1060
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    .line 1061
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1062
    invoke-direct {p0}, Lcom/android/internal/app/MiuiResolverActivity;->createWorkProfileStateReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mWorkProfileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1063
    invoke-direct {p0}, Lcom/android/internal/app/MiuiResolverActivity;->registerWorkProfileStateReceiver()V

    .line 1065
    invoke-direct {p0}, Lcom/android/internal/app/MiuiResolverActivity;->isWorkProfileEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mWorkProfileHasBeenEnabled:Z

    .line 1067
    :cond_21
    return-void
.end method

.method protected whitelist onStop()V
    .registers 4

    .line 1087
    invoke-super {p0}, Lcom/android/internal/compat/AlertActivity2;->onStop()V

    .line 1102
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1103
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->isVoiceInteraction()Z

    move-result v1

    if-nez v1, :cond_27

    iget-boolean v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolvingHome:Z

    if-nez v1, :cond_27

    iget-boolean v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mRetainInOnStop:Z

    if-nez v1, :cond_27

    .line 1112
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_27

    .line 1113
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->finish()V

    .line 1124
    :cond_27
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mChooserActivityStubImpl:Lcom/android/internal/app/ChooserActivityStub;

    invoke-virtual {v1, p0}, Lcom/android/internal/app/ChooserActivityStub;->isInterceptedByMiAppStore(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1125
    return-void

    .line 1127
    :cond_30
    iget-boolean v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mRegistered:Z

    if-eqz v1, :cond_3c

    .line 1128
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivityStub;->unregisterPackageMonitor()V

    .line 1129
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mRegistered:Z

    .line 1133
    :cond_3c
    return-void
.end method

.method protected blacklist onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z
    .registers 21
    .param p1, "target"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "always"    # Z

    .line 1428
    move-object/from16 v1, p0

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1429
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    if-eqz p1, :cond_e

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, v3

    :goto_f
    move-object v4, v0

    .line 1435
    .local v4, "intent":Landroid/content/Intent;
    const/4 v5, 0x1

    if-eqz v4, :cond_220

    iget-object v0, v1, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivityStub;->getAlwaysUse()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, v1, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v0

    if-eqz v0, :cond_220

    :cond_23
    iget-object v0, v1, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    if-eqz v0, :cond_220

    .line 1439
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v6, v0

    .line 1442
    .local v6, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v4}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 1443
    invoke-virtual {v4}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    move-object v7, v0

    .local v0, "filterIntent":Landroid/content/Intent;
    goto :goto_3d

    .line 1445
    .end local v0    # "filterIntent":Landroid/content/Intent;
    :cond_3b
    move-object v0, v4

    move-object v7, v0

    .line 1448
    .local v7, "filterIntent":Landroid/content/Intent;
    :goto_3d
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 1449
    .local v8, "action":Ljava/lang/String;
    if-eqz v8, :cond_46

    .line 1450
    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1452
    :cond_46
    invoke-virtual {v7}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v9

    .line 1453
    .local v9, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v9, :cond_60

    .line 1454
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1455
    .local v10, "cat":Ljava/lang/String;
    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1456
    .end local v10    # "cat":Ljava/lang/String;
    goto :goto_50

    .line 1458
    :cond_60
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1461
    iget-object v0, v1, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivityStub;->isInternationalBuild()Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "android.intent.category.HOME"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/internal/app/MiuiResolverActivity;->shouldBlockThirdDesktop(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 1462
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.miui.securitycenter"

    const-string v10, "com.miui.securitycenter.activity.ThirdDesktopAlertActivity"

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/app/MiuiResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 1463
    return v5

    .line 1467
    :cond_90
    iget v0, v2, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v10, 0xfff0000

    and-int/2addr v10, v0

    .line 1468
    .local v10, "cat":I
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 1469
    .local v11, "data":Landroid/net/Uri;
    const/high16 v12, 0x600000

    if-ne v10, v12, :cond_b0

    .line 1470
    invoke-virtual {v7, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 1471
    .local v13, "mimeType":Ljava/lang/String;
    if-eqz v13, :cond_b0

    .line 1473
    :try_start_a3
    invoke-virtual {v6, v13}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_a6
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_a3 .. :try_end_a6} :catch_a7

    .line 1477
    goto :goto_b0

    .line 1474
    :catch_a7
    move-exception v0

    move-object v14, v0

    move-object v0, v14

    .line 1475
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v14, "ResolverActivity"

    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1476
    const/4 v6, 0x0

    .line 1480
    .end local v0    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v13    # "mimeType":Ljava/lang/String;
    :cond_b0
    :goto_b0
    if-eqz v11, :cond_160

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_160

    .line 1484
    if-ne v10, v12, :cond_d2

    .line 1485
    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v12, "file"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_160

    .line 1486
    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v12, "content"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_160

    .line 1487
    :cond_d2
    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1491
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1492
    .local v0, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v0, :cond_106

    .line 1493
    invoke-virtual {v11}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12

    .line 1494
    .local v12, "ssp":Ljava/lang/String;
    :goto_e5
    if-eqz v12, :cond_106

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_106

    .line 1495
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PatternMatcher;

    .line 1496
    .local v13, "p":Landroid/os/PatternMatcher;
    invoke-virtual {v13, v12}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_105

    .line 1497
    invoke-virtual {v13}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Landroid/os/PatternMatcher;->getType()I

    move-result v15

    invoke-virtual {v6, v14, v15}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 1498
    goto :goto_106

    .line 1500
    .end local v13    # "p":Landroid/os/PatternMatcher;
    :cond_105
    goto :goto_e5

    .line 1502
    .end local v12    # "ssp":Ljava/lang/String;
    :cond_106
    :goto_106
    iget-object v12, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v12}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1503
    .local v12, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v12, :cond_133

    .line 1504
    :goto_10e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_133

    .line 1505
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/IntentFilter$AuthorityEntry;

    .line 1506
    .local v13, "a":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v13, v11}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v14

    if-ltz v14, :cond_132

    .line 1507
    invoke-virtual {v13}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v14

    .line 1508
    .local v14, "port":I
    invoke-virtual {v13}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v15

    .line 1509
    if-ltz v14, :cond_12e

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1508
    :cond_12e
    invoke-virtual {v6, v15, v3}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    goto :goto_133

    .line 1512
    .end local v13    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v14    # "port":I
    :cond_132
    goto :goto_10e

    .line 1514
    :cond_133
    :goto_133
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1515
    if-eqz v0, :cond_160

    .line 1516
    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1517
    .local v3, "path":Ljava/lang/String;
    :goto_13f
    if-eqz v3, :cond_160

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_160

    .line 1518
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PatternMatcher;

    .line 1519
    .local v13, "p":Landroid/os/PatternMatcher;
    invoke-virtual {v13, v3}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_15f

    .line 1520
    invoke-virtual {v13}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Landroid/os/PatternMatcher;->getType()I

    move-result v15

    invoke-virtual {v6, v14, v15}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 1521
    goto :goto_160

    .line 1523
    .end local v13    # "p":Landroid/os/PatternMatcher;
    :cond_15f
    goto :goto_13f

    .line 1528
    .end local v0    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v3    # "path":Ljava/lang/String;
    .end local v12    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    :cond_160
    :goto_160
    if-eqz v6, :cond_21c

    .line 1532
    iget-object v0, v1, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1540
    .local v3, "N":I
    iget-object v0, v1, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mOtherProfile:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const/4 v12, 0x0

    if-eqz v0, :cond_173

    move v0, v5

    goto :goto_174

    :cond_173
    move v0, v12

    :goto_174
    move v13, v0

    .line 1542
    .local v13, "needToAddBackProfileForwardingComponent":Z
    if-nez v13, :cond_17b

    .line 1543
    new-array v0, v3, [Landroid/content/ComponentName;

    move-object v14, v0

    .local v0, "set":[Landroid/content/ComponentName;
    goto :goto_180

    .line 1545
    .end local v0    # "set":[Landroid/content/ComponentName;
    :cond_17b
    add-int/lit8 v0, v3, 0x1

    new-array v0, v0, [Landroid/content/ComponentName;

    move-object v14, v0

    .line 1548
    .local v14, "set":[Landroid/content/ComponentName;
    :goto_180
    const/4 v0, 0x0

    .line 1549
    .local v0, "bestMatch":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_182
    if-ge v15, v3, :cond_1b4

    .line 1553
    iget-object v5, v1, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v5, v5, Lcom/android/internal/app/ResolverListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v5, v12}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 1554
    .local v5, "r":Landroid/content/pm/ResolveInfo;
    new-instance v12, Landroid/content/ComponentName;

    move-object/from16 v16, v7

    .end local v7    # "filterIntent":Landroid/content/Intent;
    .local v16, "filterIntent":Landroid/content/Intent;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v8

    .end local v8    # "action":Ljava/lang/String;
    .local v17, "action":Ljava/lang/String;
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v12, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v12, v14, v15

    .line 1556
    iget v7, v5, Landroid/content/pm/ResolveInfo;->match:I

    if-le v7, v0, :cond_1ab

    iget v0, v5, Landroid/content/pm/ResolveInfo;->match:I

    .line 1549
    .end local v5    # "r":Landroid/content/pm/ResolveInfo;
    :cond_1ab
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    const/4 v5, 0x1

    const/4 v12, 0x0

    goto :goto_182

    .end local v16    # "filterIntent":Landroid/content/Intent;
    .end local v17    # "action":Ljava/lang/String;
    .restart local v7    # "filterIntent":Landroid/content/Intent;
    .restart local v8    # "action":Ljava/lang/String;
    :cond_1b4
    move-object/from16 v16, v7

    move-object/from16 v17, v8

    .line 1559
    .end local v7    # "filterIntent":Landroid/content/Intent;
    .end local v8    # "action":Ljava/lang/String;
    .end local v15    # "i":I
    .restart local v16    # "filterIntent":Landroid/content/Intent;
    .restart local v17    # "action":Ljava/lang/String;
    if-eqz v13, :cond_1d2

    .line 1565
    iget-object v5, v1, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v5, v5, Lcom/android/internal/app/ResolverListAdapter;->mOtherProfile:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v5}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v5

    aput-object v5, v14, v3

    .line 1566
    iget-object v5, v1, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v5, v5, Lcom/android/internal/app/ResolverListAdapter;->mOtherProfile:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v5}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ResolveInfo;->match:I

    .line 1568
    .local v5, "otherProfileMatch":I
    if-le v5, v0, :cond_1d2

    move v0, v5

    goto :goto_1d3

    .line 1571
    .end local v5    # "otherProfileMatch":I
    :cond_1d2
    move v5, v0

    .end local v0    # "bestMatch":I
    .local v5, "bestMatch":I
    :goto_1d3
    if-eqz p2, :cond_1fa

    .line 1572
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiResolverActivity;->getUserId()I

    move-result v0

    .line 1573
    .local v0, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1576
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v6, v5, v14, v8}, Landroid/content/pm/PackageManager;->addUniquePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1578
    iget-boolean v8, v2, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v8, :cond_1f9

    .line 1580
    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v8

    .line 1581
    .local v8, "packageName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1f9

    .line 1582
    iget-object v12, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v12, v0}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    .line 1585
    .end local v0    # "userId":I
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_1f9
    goto :goto_220

    .line 1590
    :cond_1fa
    :try_start_1fa
    iget-object v0, v1, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0, v4, v6, v5}, Lcom/android/internal/app/ResolverListController;->setLastChosen(Landroid/content/Intent;Landroid/content/IntentFilter;I)V
    :try_end_201
    .catch Landroid/os/RemoteException; {:try_start_1fa .. :try_end_201} :catch_202

    .line 1593
    goto :goto_220

    .line 1591
    :catch_202
    move-exception v0

    .line 1592
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error calling setLastChosenActivity\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MiuiResolverActivity"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_220

    .line 1528
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v3    # "N":I
    .end local v5    # "bestMatch":I
    .end local v13    # "needToAddBackProfileForwardingComponent":Z
    .end local v14    # "set":[Landroid/content/ComponentName;
    .end local v16    # "filterIntent":Landroid/content/Intent;
    .end local v17    # "action":Ljava/lang/String;
    .local v7, "filterIntent":Landroid/content/Intent;
    .local v8, "action":Ljava/lang/String;
    :cond_21c
    move-object/from16 v16, v7

    move-object/from16 v17, v8

    .line 1598
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "filterIntent":Landroid/content/Intent;
    .end local v8    # "action":Ljava/lang/String;
    .end local v9    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "cat":I
    .end local v11    # "data":Landroid/net/Uri;
    :cond_220
    :goto_220
    if-eqz p1, :cond_225

    .line 1605
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/MiuiResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1616
    :cond_225
    const/4 v3, 0x1

    return v3
.end method

.method blacklist optionForChooserTarget(Lcom/android/internal/app/chooser/TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .registers 5
    .param p1, "target"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "index"    # I

    .line 892
    new-instance v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;-><init>(Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method protected blacklist postRebuildList(Z)Z
    .registers 3
    .param p1, "rebuildCompleted"    # Z

    .line 1819
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MiuiResolverActivity;->postRebuildListInternal(Z)Z

    move-result v0

    return v0
.end method

.method final blacklist postRebuildListInternal(Z)Z
    .registers 4
    .param p1, "rebuildCompleted"    # Z

    .line 1829
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v0

    .line 1833
    .local v0, "count":I
    if-eqz p1, :cond_14

    invoke-direct {p0}, Lcom/android/internal/app/MiuiResolverActivity;->maybeAutolaunchActivity()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1834
    const/4 v1, 0x1

    return v1

    .line 1837
    :cond_14
    invoke-direct {p0}, Lcom/android/internal/app/MiuiResolverActivity;->setupViewVisibilities()V

    .line 1839
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->shouldShowTabs()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1840
    invoke-direct {p0}, Lcom/android/internal/app/MiuiResolverActivity;->setupProfileTabs()V

    .line 1843
    :cond_20
    const/4 v1, 0x0

    return v1
.end method

.method protected blacklist resetButtonBar()V
    .registers 11

    .line 2194
    iget-boolean v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mSupportsAlwaysUseOption:Z

    if-nez v0, :cond_5

    .line 2195
    return-void

    .line 2197
    :cond_5
    const v0, 0x102022d

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2198
    .local v0, "buttonLayout":Landroid/view/ViewGroup;
    if-nez v0, :cond_18

    .line 2199
    const-string v1, "MiuiResolverActivity"

    const-string v2, "Layout unexpectedly does not have a button bar"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    return-void

    .line 2202
    :cond_18
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2203
    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    .line 2204
    .local v1, "activeListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    const v2, 0x1020472

    invoke-virtual {p0, v2}, Lcom/android/internal/app/MiuiResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2205
    .local v2, "buttonBarDivider":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->useLayoutWithDefault()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4f

    .line 2206
    iget-object v3, p0, Lcom/android/internal/app/MiuiResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    if-eqz v3, :cond_33

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    goto :goto_34

    :cond_33
    move v3, v4

    .line 2207
    .local v3, "inset":I
    :goto_34
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    .line 2208
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x105026d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v8, v3

    .line 2207
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2211
    .end local v3    # "inset":I
    :cond_4f
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v3

    if-eqz v3, :cond_70

    iget-object v3, p0, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2212
    invoke-virtual {v3, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->shouldShowEmptyStateScreen(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 2213
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->useLayoutWithDefault()Z

    move-result v3

    if-nez v3, :cond_70

    .line 2214
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2215
    if-eqz v2, :cond_6c

    .line 2216
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2218
    :cond_6c
    invoke-direct {p0, v4}, Lcom/android/internal/app/MiuiResolverActivity;->setButtonBarIgnoreOffset(Z)V

    .line 2219
    return-void

    .line 2221
    :cond_70
    if-eqz v2, :cond_75

    .line 2222
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2224
    :cond_75
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2225
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/app/MiuiResolverActivity;->setButtonBarIgnoreOffset(Z)V

    .line 2227
    const v3, 0x102022f

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/app/MiuiResolverActivity;->mOnceButton:Landroid/widget/Button;

    .line 2228
    const v3, 0x102022c

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/app/MiuiResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    .line 2230
    invoke-direct {p0}, Lcom/android/internal/app/MiuiResolverActivity;->resetAlwaysOrOnceButtonBar()V

    .line 2231
    return-void
.end method

.method public blacklist resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .registers 7
    .param p1, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p2, "rhs"    # Landroid/content/pm/ResolveInfo;

    .line 2304
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_9

    if-nez p2, :cond_7

    goto :goto_32

    :cond_7
    move v0, v1

    goto :goto_32

    .line 2305
    :cond_9
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_14

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_12

    goto :goto_32

    :cond_12
    move v0, v1

    goto :goto_32

    .line 2307
    :cond_14
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2306
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2307
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    goto :goto_32

    :cond_31
    move v0, v1

    .line 2304
    :goto_32
    return v0
.end method

.method public blacklist safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 3
    .param p1, "cti"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 1632
    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    .line 1634
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/internal/app/MiuiResolverActivity;->safelyStartActivityInternal(Lcom/android/internal/app/chooser/TargetInfo;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_b

    .line 1636
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 1637
    nop

    .line 1638
    return-void

    .line 1636
    :catchall_b
    move-exception v0

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 1637
    throw v0
.end method

.method public blacklist sendVoiceChoicesIfNeeded()V
    .registers 5

    .line 859
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->isVoiceInteraction()Z

    move-result v0

    if-nez v0, :cond_7

    .line 861
    return-void

    .line 869
    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v0

    new-array v0, v0, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    .line 871
    .local v0, "options":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "N":I
    :goto_11
    if-ge v1, v2, :cond_22

    .line 883
    iget-object v3, p0, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/app/MiuiResolverActivity;->optionForChooserTarget(Lcom/android/internal/app/chooser/TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    move-result-object v3

    aput-object v3, v0, v1

    .line 871
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 886
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_22
    new-instance v1, Lcom/android/internal/app/MiuiResolverActivity$PickTargetOptionRequest;

    new-instance v2, Landroid/app/VoiceInteractor$Prompt;

    .line 887
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/android/internal/app/MiuiResolverActivity$PickTargetOptionRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/MiuiResolverActivity$PickTargetOptionRequest;

    .line 888
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/MiuiResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v1, v2}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    .line 889
    return-void
.end method

.method protected final blacklist setAdditionalTargets([Landroid/content/Intent;)V
    .registers 6
    .param p1, "intents"    # [Landroid/content/Intent;

    .line 896
    if-eqz p1, :cond_10

    .line 897
    array-length v0, p1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_10

    aget-object v2, p1, v1

    .line 898
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/app/MiuiResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    .end local v2    # "intent":Landroid/content/Intent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 901
    :cond_10
    return-void
.end method

.method protected blacklist setRetainInOnStop(Z)V
    .registers 2
    .param p1, "retainInOnStop"    # Z

    .line 2296
    iput-boolean p1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mRetainInOnStop:Z

    .line 2297
    return-void
.end method

.method public blacklist setSafeForwardingMode(Z)V
    .registers 2
    .param p1, "safeForwarding"    # Z

    .line 977
    iput-boolean p1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mSafeForwardingMode:Z

    .line 978
    return-void
.end method

.method protected blacklist shouldAddFooterView()Z
    .registers 5

    .line 779
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->useLayoutWithDefault()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 781
    :cond_8
    const v0, 0x102022d

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 782
    .local v0, "buttonBar":Landroid/view/View;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1a

    goto :goto_1c

    .line 784
    :cond_1a
    const/4 v1, 0x0

    return v1

    .line 782
    :cond_1c
    :goto_1c
    return v1
.end method

.method public blacklist shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z
    .registers 3
    .param p1, "target"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 1744
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist shouldGetActivityMetadata()Z
    .registers 2

    .line 1738
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist shouldShowTabs()Z
    .registers 2

    .line 754
    invoke-direct {p0}, Lcom/android/internal/app/MiuiResolverActivity;->hasWorkProfile()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/android/internal/app/MiuiResolverActivity;->ENABLE_TABBED_VIEW:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method blacklist showTargetDetails(Landroid/content/pm/ResolveInfo;)V
    .registers 6
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .line 1748
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1749
    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 1750
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1753
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 1754
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->dismiss()V

    .line 1756
    return-void
.end method

.method public blacklist startAsCallerImpl(Landroid/content/Intent;Landroid/os/Bundle;ZI)Z
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "ignoreTargetSecurity"    # Z
    .param p4, "userId"    # I

    .line 1708
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1710
    .local v0, "chooserIntent":Landroid/content/Intent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040235

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1709
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1711
    .local v1, "delegateActivity":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1712
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 1711
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1716
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1717
    const-string v2, "android.app.extra.OPTIONS"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1718
    const-string v2, "android.app.extra.EXTRA_IGNORE_TARGET_SECURITY"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1720
    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1721
    const/high16 v2, 0x3000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1723
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 1727
    const/4 v2, 0x1

    return v2
.end method

.method public blacklist startSelected(IZZ)V
    .registers 12
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "hasIndexBeenFiltered"    # Z

    .line 1289
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1290
    return-void

    .line 1295
    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0, p1, p3}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    .line 1296
    .local v0, "target":Lcom/android/internal/app/chooser/TargetInfo;
    if-nez v0, :cond_10

    .line 1297
    return-void

    .line 1300
    :cond_10
    instance-of v1, v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v1, :cond_29

    .line 1301
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivityStub;->isInternationalBuild()Z

    move-result v1

    if-eqz v1, :cond_29

    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iget-boolean v1, v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mShowMore:Z

    if-eqz v1, :cond_29

    .line 1302
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivityStub;->showMore()V

    .line 1303
    return-void

    .line 1306
    :cond_29
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v1, p1, p3}, Lcom/android/internal/app/ResolverListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1308
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-boolean v2, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolvingHome:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_6a

    invoke-direct {p0}, Lcom/android/internal/app/MiuiResolverActivity;->hasManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-direct {p0, v1}, Lcom/android/internal/app/MiuiResolverActivity;->supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 1309
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x104011e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1311
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 1309
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 1312
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1313
    return-void

    .line 1326
    :cond_6a
    const-string v2, "MiuiResolverActivity"

    const-string v4, "get in onTargetSelected"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/app/MiuiResolverActivity;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_c7

    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivityStub;->getRecommendable()Z

    move-result v2

    if-nez v2, :cond_c7

    .line 1328
    if-eqz p2, :cond_8f

    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivityStub;->getAlwaysUse()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 1331
    const/16 v2, 0x1c7

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_a2

    .line 1333
    :cond_8f
    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivityStub;->getAlwaysUse()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 1334
    const/16 v2, 0x1c8

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_a2

    .line 1337
    :cond_9d
    const/16 v2, 0x1c9

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1345
    :goto_a2
    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 1346
    const/16 v2, 0x1c4

    goto :goto_af

    .line 1347
    :cond_ad
    const/16 v2, 0x1c6

    .line 1345
    :goto_af
    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1348
    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    iget-object v4, p0, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverListAdapter;->getDisplayList()Ljava/util/List;

    move-result-object v4

    .line 1349
    if-eqz p2, :cond_bf

    const-string v5, "always"

    goto :goto_c1

    :cond_bf
    const-string v5, "once"

    .line 1348
    :goto_c1
    invoke-virtual {v2, v4, p1, v3, v5}, Lcom/android/internal/app/ResolverActivityStub;->sendItemSelectedAnalyticsBroadcast(Ljava/util/List;IZLjava/lang/String;)V

    .line 1351
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiResolverActivity;->finish()V

    .line 1353
    :cond_c7
    return-void
.end method

.method public blacklist updateInitGridView()V
    .registers 3

    .line 2313
    const-string v0, "MiuiResolverActivity"

    const-string v1, "updateInitGridView"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    check-cast v0, Lcom/android/internal/app/ResolverActivityStubImpl;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivityStubImpl;->initIconParams()V

    .line 2315
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivityStub;->bindOfficalRecommendView()V

    .line 2316
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivityStub;->initGridViews()V

    .line 2317
    return-void
.end method

.method public blacklist updateProfileViewButton()V
    .registers 1

    .line 942
    return-void
.end method

.method public blacklist useLayoutWithDefault()Z
    .registers 2

    .line 2288
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivityStub;->getAlwaysUse()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method
