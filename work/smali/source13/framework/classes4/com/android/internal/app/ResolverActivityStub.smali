.class public Lcom/android/internal/app/ResolverActivityStub;
.super Ljava/lang/Object;
.source "ResolverActivityStub.java"


# static fields
.field private static final blacklist sInstance:Lcom/android/internal/app/ResolverActivityStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    const-class v0, Lcom/android/internal/app/ResolverActivityStub;

    .line 22
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivityStub;

    sput-object v0, Lcom/android/internal/app/ResolverActivityStub;->sInstance:Lcom/android/internal/app/ResolverActivityStub;

    .line 21
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/app/ResolverActivityStub;
    .registers 1

    .line 25
    sget-object v0, Lcom/android/internal/app/ResolverActivityStub;->sInstance:Lcom/android/internal/app/ResolverActivityStub;

    return-object v0
.end method

.method public static blacklist newInstance()Lcom/android/internal/app/ResolverActivityStub;
    .registers 1

    .line 29
    const-class v0, Lcom/android/internal/app/ResolverActivityStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivityStub;

    return-object v0
.end method


# virtual methods
.method public blacklist addAppNameIfNeeded(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 2
    .param p1, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 150
    return-void
.end method

.method public blacklist adjustWindowLayoutTemp()V
    .registers 1

    .line 130
    return-void
.end method

.method public blacklist bindOfficalRecommendView()V
    .registers 1

    .line 106
    return-void
.end method

.method public blacklist bindProfileView()V
    .registers 1

    .line 40
    return-void
.end method

.method public blacklist checkStartShareActivity(Landroid/app/Activity;Landroid/os/Bundle;ILandroid/content/Intent;)Z
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userId"    # I
    .param p4, "resolvedIntent"    # Landroid/content/Intent;

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;)V
    .registers 4
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

    .line 38
    .local p1, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p3, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-void
.end method

.method public blacklist customResolver()V
    .registers 1

    .line 42
    return-void
.end method

.method public blacklist getAlwaysUse()Z
    .registers 2

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAlwaysoptionId()I
    .registers 2

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAndroidForwardIntentToOwnerId()I
    .registers 2

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAndroidForwardIntentToWorkId()I
    .registers 2

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getApplicationContext()Landroid/content/Context;
    .registers 2

    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getChooserClassName()Ljava/lang/String;
    .registers 2

    .line 145
    const-class v0, Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getChosenIndex()I
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getChosenView()Landroid/view/View;
    .registers 2

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMaxPerScreen()I
    .registers 2

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMiuiTheme()I
    .registers 2

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPostListReadyRunnable()Ljava/lang/Runnable;
    .registers 2

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRecommendable()Z
    .registers 2

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getResolverClassName()Ljava/lang/String;
    .registers 2

    .line 141
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getShowMoreResolverButton()Z
    .registers 2

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist init(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Landroid/app/Activity;Lcom/android/internal/compat/AlertController$AlertParams;Landroid/view/View;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolverListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p3, "resolverActivity"    # Landroid/app/Activity;
    .param p4, "alertParams"    # Lcom/android/internal/compat/AlertController$AlertParams;
    .param p5, "view"    # Landroid/view/View;

    .line 35
    return-void
.end method

.method public blacklist initGridViews()V
    .registers 1

    .line 51
    return-void
.end method

.method public blacklist isInternationalBuild()Z
    .registers 2

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onDestroy()V
    .registers 1

    .line 44
    return-void
.end method

.method public blacklist registerPackageMonitor(Landroid/content/Context;Landroid/os/Looper;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thread"    # Landroid/os/Looper;
    .param p3, "externalStorage"    # Z

    .line 59
    return-void
.end method

.method public blacklist sendItemSelectedAnalyticsBroadcast(Ljava/util/List;IZLjava/lang/String;)V
    .registers 5
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

    .line 50
    .local p1, "displayResolveInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    return-void
.end method

.method public blacklist setAlwaysUse(Z)V
    .registers 2
    .param p1, "alwaysUse"    # Z

    .line 53
    return-void
.end method

.method public blacklist setChoseView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 91
    return-void
.end method

.method public blacklist setChosenIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .line 98
    return-void
.end method

.method public blacklist setPostListReadyRunnable(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "readyRunnable"    # Ljava/lang/Runnable;

    .line 78
    return-void
.end method

.method public blacklist setRecommendable(Z)V
    .registers 2
    .param p1, "recommendable"    # Z

    .line 63
    return-void
.end method

.method public blacklist showMore()V
    .registers 1

    .line 46
    return-void
.end method

.method public blacklist unregisterPackageMonitor()V
    .registers 1

    .line 61
    return-void
.end method

.method public blacklist useAospShareSheet()Z
    .registers 2

    .line 137
    const/4 v0, 0x0

    return v0
.end method
