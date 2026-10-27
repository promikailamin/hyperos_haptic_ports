.class public Lcom/android/internal/app/ResolverActivityStubImpl;
.super Lcom/android/internal/app/ResolverActivityStub;
.source "ResolverActivityStubImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivityStubImpl$WPSTypeParseUtils;,
        Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils;,
        Lcom/android/internal/app/ResolverActivityStubImpl$LoadIconIntoViewTask;,
        Lcom/android/internal/app/ResolverActivityStubImpl$LoadAdapterIconTask;,
        Lcom/android/internal/app/ResolverActivityStubImpl$LoadIconTask;,
        Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;,
        Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;
    }
.end annotation


# static fields
.field private static final blacklist EXTRA_RESOLVE_INFOS:Ljava/lang/String; = "rlist"

.field private static blacklist INTERNATIONAL_MI_SHARE_VISIABLE:Z = false

.field private static final blacklist MAX_OFFICAL_RECOMMEND_PER_SCREEN:I = 0x4

.field private static final blacklist MAX_PER_BIG_SCREEN:I = 0xa

.field private static final blacklist MAX_PER_SCREEN:I = 0x8

.field private static final blacklist MAX_PER_SCREEN_INTERNATIONAL:I = 0x8

.field public static final blacklist PACKAGE_NAME_BROWSER:Ljava/lang/String; = "com.android.browser"

.field private static final blacklist PACKAGE_NAME_BROWSER_NEW:Ljava/lang/String; = "com.mi.globalbrowser"

.field private static final blacklist PACKAGE_NAME_MISHARE:Ljava/lang/String; = "com.miui.mishare.connectivity"

.field private static final blacklist PACKAGE_NAME_NEARBY_SHARING:Ljava/lang/String; = "com.google.android.gms"

.field private static final blacklist PRIV_PACKAGES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "ResolverActivityStubImpl"

.field private static final blacklist WPS_APP_LAST_POSITION:I = 0x3

.field private static final blacklist WPS_LITE_PKG_NAME:Ljava/lang/String; = "cn.wps.moffice_eng.xiaomi.lite"

.field private static final blacklist WPS_PKG_NAME:Ljava/lang/String; = "cn.wps.moffice_eng"

.field private static final blacklist XSPACE_NOT_SHOW_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist META_KEY_RESOLVER_ITEM_SELECT:Ljava/lang/String;

.field private final blacklist META_KEY_RESOLVER_SHOWN:Ljava/lang/String;

.field private final blacklist PACKAGE_NAME_VIDEOPLAYER:Ljava/lang/String;

.field protected blacklist mAdapter:Lcom/android/internal/app/ResolverListAdapter;

.field private blacklist mAdapterView:Landroid/widget/AbsListView;

.field protected blacklist mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;

.field private blacklist mAlwaysOptionView:Landroid/widget/CheckBox;

.field public blacklist mAlwaysUseOption:Z

.field public blacklist mChosenIndex:I

.field public blacklist mChosenView:Landroid/view/View;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mFilesToMiShare:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFilteredComponents:[Landroid/content/ComponentName;

.field private blacklist mIconDpi:I

.field blacklist mIconFactory:Landroid/util/IconDrawableFactory;

.field private blacklist mIconSize:I

.field private blacklist mMaskColor:I

.field public blacklist mMaxPerScreen:I

.field private blacklist mMiShareView:Lcom/miui/mishare/app/view/MiShareTransmissionView;

.field private blacklist mOfficalRecommendIconIV:Landroid/widget/ImageView;

.field private blacklist mOfficalRecommendNameTV:Landroid/widget/TextView;

.field private blacklist mOfficalRecommendRl:Landroid/widget/RelativeLayout;

.field public final blacklist mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public blacklist mPostListReadyRunnable:Ljava/lang/Runnable;

.field protected blacklist mProfileView:Landroid/view/View;

.field private blacklist mRecommendFirstItem:Z

.field private blacklist mRecommendOfficalLayout:Landroid/widget/RelativeLayout;

.field public blacklist mRecommendable:Z

.field private blacklist mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

.field private blacklist mResolverRecommendTagTv:Landroid/widget/TextView;

.field private blacklist mScreenView:Lmiui/view/ScreenView;

.field private blacklist mShowMoreResolver:Z

.field public blacklist mShowMoreResolverButton:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/app/ResolverActivityStubImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconSize(Lcom/android/internal/app/ResolverActivityStubImpl;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mIconSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaskColor(Lcom/android/internal/app/ResolverActivityStubImpl;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mMaskColor:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRecommendFirstItem(Lcom/android/internal/app/ResolverActivityStubImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mRecommendFirstItem:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResolverActivity(Lcom/android/internal/app/ResolverActivityStubImpl;)Lcom/android/internal/app/MiuiResolverActivity;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mbindOfficalRecommendIcon(Lcom/android/internal/app/ResolverActivityStubImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityStubImpl;->bindOfficalRecommendIcon()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/ResolverActivityStubImpl;->INTERNATIONAL_MI_SHARE_VISIABLE:Z

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/app/ResolverActivityStubImpl;->PRIV_PACKAGES:Ljava/util/Set;

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/internal/app/ResolverActivityStubImpl;->XSPACE_NOT_SHOW_LIST:Ljava/util/ArrayList;

    .line 135
    const-string v2, "com.miui.personalassistant.favorite"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_38

    .line 137
    const-string v2, "com.miui.mishare.connectivity"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    const-string v2, "com.xiaomi.midrop"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    const-string v2, "com.android.browser"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    const-string v2, "com.mi.globalbrowser"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    const-string v2, "com.google.android.gms"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    const-string v0, "com.android.chrome"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_38
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityStub;-><init>()V

    .line 93
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mMaxPerScreen:I

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mShowMoreResolverButton:Z

    .line 107
    const-string v0, "com.miui.video"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->PACKAGE_NAME_VIDEOPLAYER:Ljava/lang/String;

    .line 108
    const-string v0, "com.miui.action.resolver_activity_item_select"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->META_KEY_RESOLVER_ITEM_SELECT:Ljava/lang/String;

    .line 109
    const-string v0, "com.miui.action.resolver_activity_shown"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->META_KEY_RESOLVER_SHOWN:Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mRecommendable:Z

    .line 124
    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mShowMoreResolver:Z

    .line 776
    new-instance v0, Lcom/android/internal/app/ResolverActivityStubImpl$7;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivityStubImpl$7;-><init>(Lcom/android/internal/app/ResolverActivityStubImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method

.method private blacklist addMoreResolverButton()Z
    .registers 10

    .line 979
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mShowMoreResolverButton:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_104

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_b

    goto/16 :goto_104

    .line 982
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityStubImpl;->hasSystemBrowser()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_21

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityStubImpl;->hasSystemVideoPlayer()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityStubImpl;->hasSystemWps()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    move v0, v1

    goto :goto_22

    :cond_21
    :goto_21
    move v0, v2

    :goto_22
    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mShowMoreResolverButton:Z

    .line 983
    if-eqz v0, :cond_103

    .line 984
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 985
    .local v0, "newDisplayList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    const/4 v3, 0x0

    .line 986
    .local v3, "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    const/4 v4, 0x0

    .line 987
    .local v4, "miBrowserInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    const/4 v5, 0x0

    .line 988
    .local v5, "newMiBrowserInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2f
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v7, v7, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_b3

    .line 989
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v7, v7, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v7}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getIsShowMore()Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 990
    goto :goto_af

    .line 992
    :cond_4a
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v7, v7, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    check-cast v3, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 993
    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.android.browser"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_67

    .line 994
    move-object v4, v3

    goto :goto_af

    .line 995
    :cond_67
    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.mi.globalbrowser"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_79

    .line 996
    move-object v5, v3

    goto :goto_af

    .line 997
    :cond_79
    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.miui.video"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ac

    .line 999
    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v8, "cn.wps.moffice_eng.xiaomi.lite"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9a

    goto :goto_ac

    .line 1001
    :cond_9a
    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivityStubImpl;->isPlatformApp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_af

    .line 1002
    invoke-interface {v0, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_af

    .line 1000
    :cond_ac
    :goto_ac
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 988
    :cond_af
    :goto_af
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2f

    .line 1006
    .end local v6    # "i":I
    :cond_b3
    if-eqz v5, :cond_b9

    .line 1007
    invoke-interface {v0, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_be

    .line 1008
    :cond_b9
    if-eqz v4, :cond_be

    .line 1009
    invoke-interface {v0, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1012
    :cond_be
    :goto_be
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-le v1, v6, :cond_f4

    if-eqz v3, :cond_f4

    .line 1013
    new-instance v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-direct {v1, v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 1014
    .local v1, "resolverMoreItemInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    const v7, 0x10807c3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setDisplayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1016
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10405ff

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setDisplayLabel(Ljava/lang/CharSequence;)V

    .line 1018
    iput-boolean v2, v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mShowMore:Z

    .line 1021
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1023
    .end local v1    # "resolverMoreItemInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :cond_f4
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1024
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1025
    return v2

    .line 1027
    .end local v0    # "newDisplayList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    .end local v3    # "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v4    # "miBrowserInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v5    # "newMiBrowserInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :cond_103
    return v1

    .line 980
    :cond_104
    :goto_104
    return v1
.end method

.method private blacklist bindOfficalRecommendIcon()V
    .registers 6

    .line 743
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getRecommendItem()Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    .line 744
    .local v0, "recommendInfo":Lcom/android/internal/app/chooser/TargetInfo;
    if-eqz v0, :cond_bc

    instance-of v1, v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v1, :cond_17

    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 745
    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_bc

    .line 748
    :cond_17
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverRecommendTagTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1106006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 750
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mOfficalRecommendIconIV:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 751
    invoke-interface {v0}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_3d

    .line 752
    const-string v1, ""

    goto :goto_45

    :cond_3d
    invoke-interface {v0}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 753
    .local v1, "displayLabel":Ljava/lang/String;
    :goto_45
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mOfficalRecommendRl:Landroid/widget/RelativeLayout;

    const v3, 0x110801ce

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 754
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverRecommendTagTv:Landroid/widget/TextView;

    const v3, 0x110801d2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 755
    invoke-interface {v0}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.browser"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a9

    .line 756
    invoke-interface {v0}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.mi.globalbrowser"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    goto :goto_a9

    .line 759
    :cond_76
    invoke-interface {v0}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.miui.video"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 761
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverRecommendTagTv:Landroid/widget/TextView;

    const v3, 0x110801d3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 762
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverRecommendTagTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1106006e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 764
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mOfficalRecommendRl:Landroid/widget/RelativeLayout;

    const v3, 0x110801d1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_b6

    .line 758
    :cond_a9
    :goto_a9
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x110f0314

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 766
    :cond_b6
    :goto_b6
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mOfficalRecommendNameTV:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    return-void

    .line 746
    .end local v1    # "displayLabel":Ljava/lang/String;
    :cond_bc
    :goto_bc
    return-void
.end method

.method private blacklist collectAnalyticsData(Ljava/util/List;)Landroid/os/Bundle;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 349
    .local p1, "displayResolveInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v0, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 351
    .local v2, "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .end local v2    # "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    goto :goto_9

    .line 354
    :cond_21
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 355
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "displayPackages"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 356
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const-string v3, "chooserId"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 357
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mRecommendFirstItem:Z

    const-string v3, "recommendFirstItem"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 358
    iget v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mMaxPerScreen:I

    const-string v3, "maxCountPerScreen"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 359
    return-object v1
.end method

.method private blacklist getFilesToShare()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 194
    return-object v1

    .line 196
    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/MiuiResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 199
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_57

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_57

    .line 200
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    instance-of v3, v3, Landroid/content/Intent;

    if-nez v3, :cond_27

    goto :goto_57

    .line 203
    :cond_27
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 204
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    .line 205
    .local v3, "data":Landroid/content/ClipData;
    if-nez v3, :cond_34

    .line 206
    return-object v1

    .line 208
    :cond_34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    .line 210
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3e
    if-ge v5, v4, :cond_56

    .line 211
    invoke-virtual {v3, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    .line 212
    .local v6, "item":Landroid/content/ClipData$Item;
    if-eqz v6, :cond_53

    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_53

    .line 213
    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    .end local v6    # "item":Landroid/content/ClipData$Item;
    :cond_53
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    .line 216
    .end local v5    # "i":I
    :cond_56
    return-object v1

    .line 201
    .end local v1    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "data":Landroid/content/ClipData;
    .end local v4    # "count":I
    :cond_57
    :goto_57
    return-object v1
.end method

.method private blacklist hasSystemAppInternal(Ljava/lang/String;)Z
    .registers 8
    .param p1, "filterPkgName"    # Ljava/lang/String;

    .line 1031
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_28

    .line 1032
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1033
    .local v1, "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1034
    return v2

    .line 1031
    .end local v1    # "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1037
    .end local v0    # "i":I
    :cond_28
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredResolveList()Ljava/util/List;

    move-result-object v0

    .line 1038
    .local v0, "unfilteredResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    if-eqz v0, :cond_32

    move-object v1, v0

    goto :goto_38

    .line 1039
    :cond_32
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getInitializedResolveList()Ljava/util/List;

    move-result-object v1

    :goto_38
    move-object v0, v1

    .line 1040
    const/4 v1, 0x0

    if-nez v0, :cond_3d

    .line 1041
    return v1

    .line 1043
    :cond_3d
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_65

    .line 1044
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1045
    .local v4, "info":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    if-eqz v4, :cond_62

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoSize()I

    move-result v5

    if-nez v5, :cond_53

    .line 1046
    goto :goto_62

    .line 1048
    :cond_53
    invoke-virtual {v4, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 1049
    return v2

    .line 1043
    .end local v4    # "info":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_62
    :goto_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 1052
    .end local v3    # "i":I
    :cond_65
    return v1
.end method

.method private blacklist hasSystemBrowser()Z
    .registers 2

    .line 1056
    const-string v0, "com.android.browser"

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivityStubImpl;->hasSystemAppInternal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1057
    const-string v0, "com.mi.globalbrowser"

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivityStubImpl;->hasSystemAppInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 1056
    :goto_14
    return v0
.end method

.method private blacklist hasSystemVideoPlayer()Z
    .registers 3

    .line 1061
    invoke-static {}, Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils;->getInstance()Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils;->shouldSystemVideoCanResolve(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1062
    const/4 v0, 0x0

    return v0

    .line 1064
    :cond_e
    const-string v0, "com.miui.video"

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivityStubImpl;->hasSystemAppInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist hasSystemWps()Z
    .registers 3

    .line 1160
    invoke-static {}, Lcom/android/internal/app/ResolverActivityStubImpl$WPSTypeParseUtils;->getInstance()Lcom/android/internal/app/ResolverActivityStubImpl$WPSTypeParseUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivityStubImpl$WPSTypeParseUtils;->isDocTypeResolved(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1161
    const/4 v0, 0x0

    return v0

    .line 1163
    :cond_e
    const-string v0, "cn.wps.moffice_eng.xiaomi.lite"

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivityStubImpl;->hasSystemAppInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist inflateGridView(I)Landroid/widget/GridView;
    .registers 6
    .param p1, "page"    # I

    .line 506
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mScreenView:Lmiui/view/ScreenView;

    const v2, 0x110c0032

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 508
    .local v0, "grid":Landroid/widget/GridView;
    new-instance v1, Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;-><init>(Lcom/android/internal/app/ResolverActivityStubImpl;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 509
    new-instance v1, Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, v2, p1}, Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;-><init>(Lcom/android/internal/app/MiuiResolverActivity;I)V

    .line 510
    .local v1, "listener":Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 511
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 512
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 513
    return-object v0
.end method

.method private blacklist initMiShareView()V
    .registers 5

    .line 167
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/compat/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x110a007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/mishare/app/view/MiShareTransmissionView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mMiShareView:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    .line 168
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityStubImpl;->shouldShowMiShare()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    .line 169
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mMiShareView:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->setVisibility(I)V

    .line 170
    iput-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mMiShareView:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    .line 171
    return-void

    .line 174
    :cond_20
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/MiuiResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mMiShareView:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->showFileDetailGroup(Z)V

    .line 176
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mMiShareView:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-virtual {v2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->bind()V

    .line 177
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mMiShareView:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    const-string v3, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    move-object v1, v0

    :cond_48
    invoke-virtual {v2, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->setIntent(Landroid/content/Intent;)V

    .line 179
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mMiShareView:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->setVisibility(I)V

    .line 180
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mMiShareView:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mFilesToMiShare:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->setFiles(Ljava/util/List;)V

    .line 181
    return-void
.end method

.method private blacklist initOfficalRecommendView(Landroid/widget/RelativeLayout;)V
    .registers 8
    .param p1, "recommendOfficalLayout"    # Landroid/widget/RelativeLayout;

    .line 396
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110700e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mIconSize:I

    .line 398
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mScreenView:Lmiui/view/ScreenView;

    invoke-virtual {v0}, Lmiui/view/ScreenView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 399
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110700df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    .line 400
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 401
    const v3, 0x110700e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 399
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 402
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mScreenView:Lmiui/view/ScreenView;

    invoke-virtual {v1, v0}, Lmiui/view/ScreenView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    const v1, 0x110a00a7

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mOfficalRecommendIconIV:Landroid/widget/ImageView;

    .line 405
    const v1, 0x110a00a8

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mOfficalRecommendNameTV:Landroid/widget/TextView;

    .line 407
    const v1, 0x110a00ad

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverRecommendTagTv:Landroid/widget/TextView;

    .line 409
    nop

    .line 410
    const v1, 0x110a00a9

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mOfficalRecommendRl:Landroid/widget/RelativeLayout;

    .line 411
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 412
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mOfficalRecommendRl:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mChosenView:Landroid/view/View;

    .line 413
    iput v3, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mChosenIndex:I

    .line 414
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getRecommendItem()Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v1

    .line 415
    .local v1, "recommendInfo":Lcom/android/internal/app/chooser/TargetInfo;
    instance-of v2, v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v2, :cond_92

    move-object v2, v1

    check-cast v2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 416
    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v2

    if-nez v2, :cond_92

    .line 417
    new-instance v2, Lcom/android/internal/app/ResolverActivityStubImpl$LoadAdapterIconTask;

    const/4 v4, 0x0

    move-object v5, v1

    check-cast v5, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-direct {v2, p0, v4, v5}, Lcom/android/internal/app/ResolverActivityStubImpl$LoadAdapterIconTask;-><init>(Lcom/android/internal/app/ResolverActivityStubImpl;Landroid/widget/BaseAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivityStubImpl$LoadAdapterIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 419
    :cond_92
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityStubImpl;->bindOfficalRecommendIcon()V

    .line 420
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mOfficalRecommendRl:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/android/internal/app/ResolverActivityStubImpl$5;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ResolverActivityStubImpl$5;-><init>(Lcom/android/internal/app/ResolverActivityStubImpl;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mOfficalRecommendRl:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/android/internal/app/ResolverActivityStubImpl$6;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ResolverActivityStubImpl$6;-><init>(Lcom/android/internal/app/ResolverActivityStubImpl;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 439
    return-void
.end method

.method private blacklist isFoldDeviceInternal()Z
    .registers 3

    .line 220
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 221
    .local v0, "sw":I
    invoke-static {}, Landroid/util/MiuiAppSizeCompatModeStub;->get()Landroid/util/MiuiAppSizeCompatModeStub;

    move-result-object v1

    invoke-interface {v1}, Landroid/util/MiuiAppSizeCompatModeStub;->isFoldScreenDevice()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/16 v1, 0x258

    if-lt v0, v1, :cond_1c

    .line 222
    const/4 v1, 0x1

    return v1

    .line 224
    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist isPlatformApp(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 968
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private blacklist isRecommendPackages(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1314
    const-string v0, "com.android.browser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1315
    const-string v0, "com.mi.globalbrowser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1316
    const-string v0, "com.miui.video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1317
    const-string v0, "cn.wps.moffice_eng"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1318
    const-string v0, "cn.wps.moffice_eng.xiaomi.lite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    .line 1314
    :goto_2c
    return v0
.end method

.method private blacklist processRecommendedApp()V
    .registers 7

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processRecommendedApp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResolverActivityStubImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mRecommendFirstItem:Z

    .line 930
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_24
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_80

    .line 931
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 932
    .local v3, "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    iget-boolean v4, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mRecommendFirstItem:Z

    if-nez v4, :cond_7d

    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverActivityStubImpl;->shouldRecommend(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 933
    if-eqz v2, :cond_79

    .line 934
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DisplayResolveInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " i "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v4, v4, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-interface {v1, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 937
    :cond_79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mRecommendFirstItem:Z

    .line 938
    goto :goto_80

    .line 930
    .end local v3    # "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :cond_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 941
    .end local v2    # "i":I
    :cond_80
    :goto_80
    return-void
.end method

.method private blacklist sendAnalyticBroadcast(Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 11
    .param p2, "metaKey"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 364
    .local p1, "displayResolveInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 365
    .local v1, "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 366
    .local v2, "meta":Landroid/os/Bundle;
    if-eqz v2, :cond_1f

    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    .line 367
    .local v3, "action":Ljava/lang/String;
    :goto_20
    if-nez v3, :cond_23

    .line 368
    goto :goto_4

    .line 371
    :cond_23
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 373
    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    const-string v6, "miui.permission.USE_INTERNAL_GENERAL_API"

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 375
    .end local v1    # "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v2    # "meta":Landroid/os/Bundle;
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_4

    .line 376
    :cond_3e
    return-void
.end method

.method private blacklist sendResolverShownAnalyticsBroadcast(Ljava/util/List;Z)V
    .registers 6
    .param p2, "isOfficalType"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 342
    .local p1, "displayResolveInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivityStubImpl;->collectAnalyticsData(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    .line 343
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "hasOfficalRecommendation"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 344
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/MiuiResolverActivity;->mReferrerPackage:Ljava/lang/String;

    const-string v2, "refApp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v1, "com.miui.action.resolver_activity_shown"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/app/ResolverActivityStubImpl;->sendAnalyticBroadcast(Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 346
    return-void
.end method

.method private blacklist shouldRecommend(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z
    .registers 7
    .param p1, "info"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 944
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.miui.video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 945
    invoke-static {}, Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils;->getInstance()Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils;->shouldSystemVideoCanResolve(Landroid/app/Activity;)Z

    move-result v0

    return v0

    .line 947
    :cond_1b
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "cn.wps.moffice_eng.xiaomi.lite"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 948
    invoke-static {}, Lcom/android/internal/app/ResolverActivityStubImpl$WPSTypeParseUtils;->getInstance()Lcom/android/internal/app/ResolverActivityStubImpl$WPSTypeParseUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivityStubImpl$WPSTypeParseUtils;->isDocTypeResolved(Landroid/app/Activity;)Z

    move-result v0

    return v0

    .line 950
    :cond_36
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 951
    .local v0, "meta":Landroid/os/Bundle;
    const/4 v1, 0x0

    if-nez v0, :cond_42

    .line 952
    return v1

    .line 954
    :cond_42
    const-string v2, "mi_appchooser_reommended_enabled_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 955
    .local v2, "recommendEnableKey":Ljava/lang/String;
    if-nez v2, :cond_4b

    .line 956
    return v1

    .line 958
    :cond_4b
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v3, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5a

    move v1, v4

    :cond_5a
    return v1
.end method

.method private blacklist shouldShowMiShare()Z
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mFilesToMiShare:Ljava/util/List;

    if-nez v0, :cond_a

    .line 185
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityStubImpl;->getFilesToShare()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mFilesToMiShare:Ljava/util/List;

    .line 188
    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mFilesToMiShare:Ljava/util/List;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mFilesToMiShare:Ljava/util/List;

    .line 189
    invoke-static {v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->isMiAppStore(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 188
    :goto_1f
    return v0
.end method


# virtual methods
.method public blacklist addAppNameIfNeeded(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 9
    .param p1, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1279
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 1280
    return-void

    .line 1282
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1283
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_c

    .line 1284
    return-void

    .line 1286
    :cond_c
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1287
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v1, :cond_11

    .line 1288
    return-void

    .line 1290
    :cond_11
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/app/ResolverActivityStubImpl;->isRecommendPackages(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1291
    return-void

    .line 1293
    :cond_1a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 1294
    .local v2, "locale":Ljava/util/Locale;
    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9b

    iget-object v3, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_9b

    iget-object v3, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_9b

    .line 1297
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, ""

    if-nez v3, :cond_46

    .line 1298
    move-object v3, v4

    goto :goto_4e

    :cond_46
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1299
    .local v3, "displayLabel":Ljava/lang/String;
    :goto_4e
    iget-object v5, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_61

    .line 1300
    goto :goto_75

    :cond_61
    iget-object v4, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1301
    .local v4, "appName":Ljava/lang/String;
    :goto_75
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9b

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9b

    .line 1302
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setDisplayLabel(Ljava/lang/CharSequence;)V

    .line 1305
    .end local v3    # "displayLabel":Ljava/lang/String;
    .end local v4    # "appName":Ljava/lang/String;
    :cond_9b
    return-void
.end method

.method public blacklist adjustWindowLayoutTemp()V
    .registers 4

    .line 1246
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/MiuiResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1247
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 1248
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1249
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1250
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1251
    const v2, 0x3f19999a    # 0.6f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1252
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1253
    return-void
.end method

.method public blacklist bindOfficalRecommendView()V
    .registers 3

    .line 385
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityStubImpl;->hasOfficalRecommendation()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityStubImpl;->getRecommendItem()Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_2d

    .line 388
    :cond_11
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/compat/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x110a00ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mRecommendOfficalLayout:Landroid/widget/RelativeLayout;

    .line 390
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mMaxPerScreen:I

    .line 391
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mRecommendOfficalLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivityStubImpl;->initOfficalRecommendView(Landroid/widget/RelativeLayout;)V

    .line 393
    return-void

    .line 386
    :cond_2d
    :goto_2d
    return-void
.end method

.method public blacklist bindProfileView()V
    .registers 6

    .line 727
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    .line 728
    .local v0, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    if-eqz v0, :cond_4b

    .line 729
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/MiuiResolverActivity;->mProfileView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 730
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/MiuiResolverActivity;->mProfileView:Landroid/view/View;

    const v3, 0x110a0067

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 731
    .local v1, "icon":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    iget-object v3, v3, Lcom/android/internal/app/MiuiResolverActivity;->mProfileView:Landroid/view/View;

    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 732
    .local v3, "text":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v4

    if-nez v4, :cond_3a

    .line 733
    new-instance v4, Lcom/android/internal/app/ResolverActivityStubImpl$LoadIconIntoViewTask;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/internal/app/ResolverActivityStubImpl$LoadIconIntoViewTask;-><init>(Lcom/android/internal/app/ResolverActivityStubImpl;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/widget/ImageView;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/ResolverActivityStubImpl$LoadIconIntoViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 735
    :cond_3a
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 736
    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v3    # "text":Landroid/widget/TextView;
    goto :goto_54

    .line 738
    :cond_4b
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/MiuiResolverActivity;->mProfileView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 740
    :goto_54
    return-void
.end method

.method public blacklist checkStartShareActivity(Landroid/app/Activity;Landroid/os/Bundle;ILandroid/content/Intent;)Z
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userId"    # I
    .param p4, "resolvedIntent"    # Landroid/content/Intent;

    .line 163
    invoke-static {p1, p2, p3, p4}, Lcom/miui/securityshare/SecurityShareHelper;->checkStartShareActivity(Landroid/app/Activity;Landroid/os/Bundle;ILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public blacklist configureContentView()V
    .registers 1

    .line 159
    return-void
.end method

.method public blacklist configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;)V
    .registers 11
    .param p2, "initialIntents"    # [Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 233
    .local p1, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p3, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/MiuiResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 234
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/MiuiResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1106006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mMaskColor:I

    .line 235
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;Z)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mIconFactory:Landroid/util/IconDrawableFactory;

    .line 237
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x110c0034

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/compat/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 238
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/compat/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x110a00ba

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/view/ScreenView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mScreenView:Lmiui/view/ScreenView;

    .line 239
    invoke-virtual {v0, v1}, Lmiui/view/ScreenView;->setScreenTransitionType(I)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/compat/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityStubImpl;->getAlwaysoptionId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAlwaysOptionView:Landroid/widget/CheckBox;

    .line 241
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/compat/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 242
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;

    new-instance v2, Lcom/android/internal/app/ResolverActivityStubImpl$1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ResolverActivityStubImpl$1;-><init>(Lcom/android/internal/app/ResolverActivityStubImpl;)V

    iput-object v2, v0, Lcom/android/internal/compat/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 254
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverListAdapter;->rebuildList(Z)Z

    move-result v0

    .line 255
    .local v0, "rebuildCompleted":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rebuildCompleted: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "ResolverActivityStubImpl"

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v2

    .line 260
    .local v2, "count":I
    if-eqz v0, :cond_c5

    .line 261
    if-ne v2, v1, :cond_c5

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v1

    if-nez v1, :cond_c5

    .line 263
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v1, v3, v3}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v1

    .line 264
    .local v1, "target":Lcom/android/internal/app/chooser/TargetInfo;
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-virtual {v6, v1}, Lcom/android/internal/app/MiuiResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z

    move-result v6

    if-eqz v6, :cond_c5

    .line 265
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-virtual {v4, v1}, Lcom/android/internal/app/MiuiResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 266
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v4}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 267
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    iput-boolean v3, v4, Lcom/android/internal/app/MiuiResolverActivity;->mRegistered:Z

    .line 268
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/MiuiResolverActivity;->finish()V

    .line 269
    return-void

    .line 273
    .end local v1    # "target":Lcom/android/internal/app/chooser/TargetInfo;
    :cond_c5
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityStubImpl;->initIconParams()V

    .line 274
    if-nez v2, :cond_e0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getPlaceholderCount()I

    move-result v1

    if-nez v1, :cond_e0

    .line 275
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    const v4, 0x110f0024

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/compat/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_140

    .line 277
    :cond_e0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityStubImpl;->bindOfficalRecommendView()V

    .line 278
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityStubImpl;->initGridViews()V

    .line 279
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityStubImpl;->initMiShareView()V

    .line 280
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v1, v5, v3}, Lcom/android/internal/app/MiuiResolverActivity;->onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverListAdapter;)V

    .line 281
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mRecommendable:Z

    if-eqz v1, :cond_129

    .line 282
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x110f0313

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/compat/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 284
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;

    new-instance v3, Lcom/android/internal/app/ResolverActivityStubImpl$2;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ResolverActivityStubImpl$2;-><init>(Lcom/android/internal/app/ResolverActivityStubImpl;)V

    iput-object v3, v1, Lcom/android/internal/compat/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 292
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x110f0312

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/compat/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 294
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;

    new-instance v3, Lcom/android/internal/app/ResolverActivityStubImpl$3;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ResolverActivityStubImpl$3;-><init>(Lcom/android/internal/app/ResolverActivityStubImpl;)V

    iput-object v3, v1, Lcom/android/internal/compat/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_140

    .line 303
    :cond_129
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/compat/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 305
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;

    new-instance v3, Lcom/android/internal/app/ResolverActivityStubImpl$4;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ResolverActivityStubImpl$4;-><init>(Lcom/android/internal/app/ResolverActivityStubImpl;)V

    iput-object v3, v1, Lcom/android/internal/compat/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 312
    :goto_140
    return-void
.end method

.method public blacklist customResolver()V
    .registers 9

    .line 884
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_13

    goto/16 :goto_bc

    .line 888
    :cond_13
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityStubImpl;->addMoreResolverButton()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mShowMoreResolver:Z

    .line 890
    if-nez v0, :cond_90

    .line 891
    const/4 v0, 0x0

    .line 892
    .local v0, "positionPriApp":I
    const/4 v2, 0x0

    .line 893
    .local v2, "mishareInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v4, v4, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7a

    .line 894
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v4, v4, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 895
    .local v4, "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v4}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 896
    .local v5, "packageName":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/app/ResolverActivityStubImpl;->PRIV_PACKAGES:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_77

    .line 897
    const-string v6, "com.google.android.gms"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 898
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v6, v6, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 899
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v6, v6, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    add-int/lit8 v7, v3, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 900
    const/4 v0, 0x1

    goto :goto_77

    .line 901
    :cond_5d
    const-string v6, "com.miui.mishare.connectivity"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 902
    move-object v2, v4

    goto :goto_77

    .line 904
    :cond_67
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v6, v6, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v6, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 905
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v6, v6, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    add-int/lit8 v7, v3, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 893
    .end local v4    # "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_77
    :goto_77
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 909
    .end local v3    # "i":I
    :cond_7a
    if-eqz v2, :cond_90

    .line 910
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 911
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityStubImpl;->shouldShowMiShare()Z

    move-result v3

    if-eqz v3, :cond_90

    .line 912
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v3, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 917
    .end local v0    # "positionPriApp":I
    .end local v2    # "mishareInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :cond_90
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityStubImpl;->processRecommendedApp()V

    .line 918
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityStubImpl;->hasOfficalRecommendation()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/app/ResolverActivityStubImpl;->sendResolverShownAnalyticsBroadcast(Ljava/util/List;Z)V

    .line 920
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mShowMoreResolver:Z

    if-eqz v0, :cond_bb

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mRecommendFirstItem:Z

    if-nez v0, :cond_bb

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityStubImpl;->hasSystemBrowser()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 921
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAlwaysOptionView:Landroid/widget/CheckBox;

    if-eqz v0, :cond_bb

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_bb

    .line 922
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAlwaysOptionView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 925
    :cond_bb
    return-void

    .line 885
    :cond_bc
    :goto_bc
    return-void
.end method

.method public blacklist filterDisplayResolveInfo(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .line 1135
    .local p1, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    if-eqz p1, :cond_49

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_a

    goto :goto_49

    .line 1138
    :cond_a
    const/4 v0, 0x0

    .line 1139
    .local v0, "hasWps":Z
    const/4 v1, -0x1

    .line 1140
    .local v1, "wpsLitePos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_40

    .line 1141
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1142
    .local v3, "info":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    iget-object v4, v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    if-nez v4, :cond_1e

    .line 1143
    goto :goto_3d

    .line 1145
    :cond_1e
    iget-object v4, v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cn.wps.moffice_eng"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1146
    const/4 v0, 0x1

    .line 1147
    goto :goto_3d

    .line 1149
    :cond_2e
    iget-object v4, v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cn.wps.moffice_eng.xiaomi.lite"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1150
    move v1, v2

    .line 1140
    .end local v3    # "info":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_3d
    :goto_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1154
    .end local v2    # "i":I
    :cond_40
    if-eqz v0, :cond_48

    const/4 v2, -0x1

    if-eq v2, v1, :cond_48

    .line 1155
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1157
    :cond_48
    return-void

    .line 1136
    .end local v0    # "hasWps":Z
    .end local v1    # "wpsLitePos":I
    :cond_49
    :goto_49
    return-void
.end method

.method public blacklist getAlwaysUse()Z
    .registers 2

    .line 817
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAlwaysUseOption:Z

    return v0
.end method

.method public blacklist getAlwaysoptionId()I
    .registers 2

    .line 1225
    const v0, 0x110a0007

    return v0
.end method

.method public blacklist getAndroidForwardIntentToOwnerId()I
    .registers 2

    .line 1236
    const v0, 0x110f001c

    return v0
.end method

.method public blacklist getAndroidForwardIntentToWorkId()I
    .registers 2

    .line 1241
    const v0, 0x110f001d

    return v0
.end method

.method public blacklist getApplicationContext()Landroid/content/Context;
    .registers 2

    .line 1257
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    if-nez v0, :cond_6

    .line 1258
    const/4 v0, 0x0

    return-object v0

    .line 1260
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/app/MiuiResolverActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getChooserClassName()Ljava/lang/String;
    .registers 2

    .line 1275
    const-class v0, Lcom/android/internal/app/MiuiChooserActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getChosenIndex()I
    .registers 2

    .line 872
    iget v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mChosenIndex:I

    return v0
.end method

.method public blacklist getChosenView()Landroid/view/View;
    .registers 2

    .line 862
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mChosenView:Landroid/view/View;

    return-object v0
.end method

.method blacklist getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .line 693
    :try_start_0
    iget v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mIconDpi:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    .line 696
    .local v0, "result":Landroid/graphics/drawable/Drawable;
    goto :goto_a

    .line 694
    .end local v0    # "result":Landroid/graphics/drawable/Drawable;
    :catch_7
    move-exception v0

    .line 695
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 698
    .local v0, "result":Landroid/graphics/drawable/Drawable;
    :goto_a
    return-object v0
.end method

.method public blacklist getMaxPerScreen()I
    .registers 2

    .line 857
    iget v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mMaxPerScreen:I

    return v0
.end method

.method public blacklist getMiuiTheme()I
    .registers 2

    .line 1220
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getPostListReadyRunnable()Ljava/lang/Runnable;
    .registers 2

    .line 847
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mPostListReadyRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public blacklist getRecommendItem()Lcom/android/internal/app/chooser/TargetInfo;
    .registers 3

    .line 1068
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 1069
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/TargetInfo;

    return-object v0

    .line 1071
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRecommendable()Z
    .registers 2

    .line 837
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mRecommendable:Z

    return v0
.end method

.method public blacklist getResolverClassName()Ljava/lang/String;
    .registers 2

    .line 1271
    const-class v0, Lcom/android/internal/app/MiuiResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getShowMoreResolverButton()Z
    .registers 2

    .line 842
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mShowMoreResolverButton:Z

    return v0
.end method

.method public blacklist hasOfficalRecommendation()Z
    .registers 2

    .line 962
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityStubImpl;->hasSystemBrowser()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityStubImpl;->hasSystemVideoPlayer()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityStubImpl;->hasSystemWps()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_12
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mRecommendable:Z

    .line 964
    return v0
.end method

.method public blacklist init(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Landroid/app/Activity;Lcom/android/internal/compat/AlertController$AlertParams;Landroid/view/View;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolverListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p3, "resolverActivity"    # Landroid/app/Activity;
    .param p4, "alertParams"    # Lcom/android/internal/compat/AlertController$AlertParams;
    .param p5, "view"    # Landroid/view/View;

    .line 150
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    .line 151
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    .line 152
    move-object v0, p3

    check-cast v0, Lcom/android/internal/app/MiuiResolverActivity;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    .line 153
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;

    .line 154
    iput-object p5, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mProfileView:Landroid/view/View;

    .line 155
    invoke-virtual {v0, p1}, Lcom/android/internal/app/MiuiResolverActivity;->isClosable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0xa

    goto :goto_18

    :cond_16
    const/16 v0, 0x8

    :goto_18
    iput v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mMaxPerScreen:I

    .line 156
    return-void
.end method

.method public blacklist initGridViews()V
    .registers 12

    .line 443
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_57

    .line 444
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 445
    iput v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mMaxPerScreen:I

    .line 446
    sput-boolean v3, Lcom/android/internal/app/ResolverActivityStubImpl;->INTERNATIONAL_MI_SHARE_VISIABLE:Z

    .line 457
    :cond_14
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x3

    if-le v0, v4, :cond_57

    .line 458
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_20
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v5, v5, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_57

    .line 459
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v5, v5, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 460
    .local v5, "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    iget-object v6, v5, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "cn.wps.moffice_eng"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 461
    if-ge v0, v4, :cond_45

    .line 462
    goto :goto_57

    .line 464
    :cond_45
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v4, v4, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 465
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v4, v4, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v4, v2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 466
    goto :goto_57

    .line 458
    .end local v5    # "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 472
    .end local v0    # "i":I
    :cond_57
    :goto_57
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mScreenView:Lmiui/view/ScreenView;

    invoke-virtual {v0}, Lmiui/view/ScreenView;->removeAllScreens()V

    .line 473
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v0

    .line 474
    .local v0, "count":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ResolverActivityInjector: count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ResolverActivityStubImpl"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget v4, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mMaxPerScreen:I

    div-int v6, v0, v4

    .line 477
    .local v6, "divider":I
    rem-int v4, v0, v4

    if-nez v4, :cond_90

    move v4, v6

    goto :goto_92

    :cond_90
    add-int/lit8 v4, v6, 0x1

    .line 478
    .local v4, "page":I
    :goto_92
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mScreenView:Lmiui/view/ScreenView;

    invoke-virtual {v7}, Lmiui/view/ScreenView;->removeAllViews()V

    .line 479
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "page: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v5, 0x0

    if-ne v4, v3, :cond_e3

    .line 481
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mScreenView:Lmiui/view/ScreenView;

    invoke-virtual {v7, v1}, Lmiui/view/ScreenView;->setSeekBarVisibility(I)V

    .line 482
    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivityStubImpl;->inflateGridView(I)Landroid/widget/GridView;

    move-result-object v1

    .line 483
    .local v1, "grid":Landroid/widget/GridView;
    invoke-virtual {v1}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v7

    invoke-virtual {v1}, Landroid/widget/GridView;->getPaddingTop()I

    move-result v8

    invoke-virtual {v1}, Landroid/widget/GridView;->getPaddingRight()I

    move-result v9

    invoke-virtual {v1, v7, v8, v9, v5}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 485
    invoke-virtual {v1}, Landroid/widget/GridView;->getCount()I

    move-result v7

    iget v8, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mMaxPerScreen:I

    iget-boolean v9, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mRecommendable:Z

    if-eqz v9, :cond_d4

    .line 486
    move v2, v3

    goto :goto_d5

    :cond_d4
    nop

    :goto_d5
    div-int/2addr v8, v2

    .line 485
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 487
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mScreenView:Lmiui/view/ScreenView;

    invoke-virtual {v2, v1}, Lmiui/view/ScreenView;->addView(Landroid/view/View;)V

    .line 488
    .end local v1    # "grid":Landroid/widget/GridView;
    goto :goto_113

    .line 489
    :cond_e3
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x51

    const/4 v8, -0x2

    invoke-direct {v1, v8, v8, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 492
    .local v1, "seekbarParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mScreenView:Lmiui/view/ScreenView;

    invoke-virtual {v7, v1}, Lmiui/view/ScreenView;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 493
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mScreenView:Lmiui/view/ScreenView;

    invoke-virtual {v7, v5}, Lmiui/view/ScreenView;->setSeekBarVisibility(I)V

    .line 495
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_f6
    if-ge v7, v4, :cond_113

    .line 496
    add-int/lit8 v8, v7, 0x1

    invoke-direct {p0, v8}, Lcom/android/internal/app/ResolverActivityStubImpl;->inflateGridView(I)Landroid/widget/GridView;

    move-result-object v8

    .line 497
    .local v8, "grid":Landroid/widget/GridView;
    iget v9, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mMaxPerScreen:I

    iget-boolean v10, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mRecommendable:Z

    if-eqz v10, :cond_106

    .line 498
    move v10, v3

    goto :goto_107

    :cond_106
    move v10, v2

    :goto_107
    div-int/2addr v9, v10

    .line 497
    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 499
    iget-object v9, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mScreenView:Lmiui/view/ScreenView;

    invoke-virtual {v9, v8}, Lmiui/view/ScreenView;->addView(Landroid/view/View;)V

    .line 495
    .end local v8    # "grid":Landroid/widget/GridView;
    add-int/lit8 v7, v7, 0x1

    goto :goto_f6

    .line 502
    .end local v1    # "seekbarParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "i":I
    :cond_113
    :goto_113
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mScreenView:Lmiui/view/ScreenView;

    invoke-virtual {v1, v5}, Lmiui/view/ScreenView;->setCurrentScreen(I)V

    .line 503
    return-void
.end method

.method protected blacklist initIconParams()V
    .registers 5

    .line 318
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/android/internal/app/MiuiResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 320
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mIconDpi:I

    .line 321
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mIconSize:I

    .line 322
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/MiuiResolverActivity;->isClosable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_26

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityStubImpl;->isFoldDeviceInternal()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 323
    :cond_26
    iget v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mIconSize:I

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1107009d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mIconSize:I

    .line 326
    :cond_3a
    return-void
.end method

.method public blacklist isInternationalBuild()Z
    .registers 2

    .line 1231
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    return v0
.end method

.method blacklist loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .line 704
    :try_start_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget v0, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v0, :cond_21

    .line 705
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    iget-object v0, v0, Lcom/android/internal/app/MiuiResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivityStubImpl;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 707
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_21

    .line 708
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mIconFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v1, v0}, Landroid/util/IconDrawableFactory;->getShadowedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 711
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_21
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v0

    .line 712
    .local v0, "iconRes":I
    if-eqz v0, :cond_40

    .line 713
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/MiuiResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ResolverActivityStubImpl;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 715
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_40

    .line 716
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mIconFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v2, v1}, Landroid/util/IconDrawableFactory;->getShadowedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_3f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_3f} :catch_41

    return-object v2

    .line 721
    .end local v0    # "iconRes":I
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_40
    goto :goto_49

    .line 719
    :catch_41
    move-exception v0

    .line 720
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "ResolverActivityStubImpl"

    const-string v2, "Couldn\'t find resources for package"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 722
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_49
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mIconFactory:Landroid/util/IconDrawableFactory;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onDestroy()V
    .registers 2

    .line 771
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mMiShareView:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    if-eqz v0, :cond_7

    .line 772
    invoke-virtual {v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->unbind()V

    .line 774
    :cond_7
    return-void
.end method

.method public blacklist registerPackageMonitor(Landroid/content/Context;Landroid/os/Looper;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thread"    # Landroid/os/Looper;
    .param p3, "externalStorage"    # Z

    .line 822
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 823
    return-void
.end method

.method public blacklist sendItemSelectedAnalyticsBroadcast(Ljava/util/List;IZLjava/lang/String;)V
    .registers 8
    .param p2, "pos"    # I
    .param p3, "isOfficalType"    # Z
    .param p4, "selectedType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;IZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 332
    .local p1, "displayResolveInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivityStubImpl;->collectAnalyticsData(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    .line 333
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "selectedItem"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 334
    const-string v1, "hasOfficalRecommendation"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 335
    const-string v1, "selectedType"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mResolverActivity:Lcom/android/internal/app/MiuiResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/MiuiResolverActivity;->mReferrerPackage:Ljava/lang/String;

    const-string v2, "refApp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v1, "com.miui.action.resolver_activity_item_select"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/app/ResolverActivityStubImpl;->sendAnalyticBroadcast(Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 338
    return-void
.end method

.method public blacklist setAlwaysUse(Z)V
    .registers 2
    .param p1, "alwaysUse"    # Z

    .line 812
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAlwaysUseOption:Z

    .line 813
    return-void
.end method

.method public blacklist setChoseView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 867
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mChosenView:Landroid/view/View;

    .line 868
    return-void
.end method

.method public blacklist setChosenIndex(I)V
    .registers 4
    .param p1, "index"    # I

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResolverActivityStubImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iput p1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mChosenIndex:I

    .line 879
    return-void
.end method

.method public blacklist setPostListReadyRunnable(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "readyRunnable"    # Ljava/lang/Runnable;

    .line 852
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mPostListReadyRunnable:Ljava/lang/Runnable;

    .line 853
    return-void
.end method

.method public blacklist setRecommendable(Z)V
    .registers 2
    .param p1, "recommendable"    # Z

    .line 832
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mRecommendable:Z

    .line 833
    return-void
.end method

.method public blacklist showMore()V
    .registers 3

    .line 799
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mShowMoreResolverButton:Z

    .line 800
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAlwaysOptionView:Landroid/widget/CheckBox;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_12

    .line 801
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAlwaysOptionView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 803
    :cond_12
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->handlePackagesChanged()V

    .line 804
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityStubImpl;->initGridViews()V

    .line 805
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mScreenView:Lmiui/view/ScreenView;

    invoke-virtual {v1}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 806
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mScreenView:Lmiui/view/ScreenView;

    invoke-virtual {v1, v0}, Lmiui/view/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 805
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 808
    .end local v0    # "i":I
    :cond_37
    return-void
.end method

.method public blacklist unregisterPackageMonitor()V
    .registers 2

    .line 827
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 828
    return-void
.end method

.method public blacklist useAospShareSheet()Z
    .registers 4

    .line 1265
    nop

    .line 1266
    const-string v0, "ro.miui.cts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1265
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "persist.sys.miui_optimization"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 1267
    const-string v0, "persist.sys.profile_managed"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    move v1, v2

    goto :goto_24

    :cond_23
    :goto_23
    nop

    .line 1265
    :goto_24
    return v1
.end method
