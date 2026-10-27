.class public Lcom/miui/leakcanary/VisibilityTracker;
.super Ljava/lang/Object;
.source "VisibilityTracker.java"


# instance fields
.field private blacklist hasVisibleActivities:Z

.field private blacklist lastVisible:Z

.field private final blacklist listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/miui/leakcanary/OnVisibilityChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist screenOn:Z

.field private blacklist startedActivityCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgethasVisibleActivities(Lcom/miui/leakcanary/VisibilityTracker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/miui/leakcanary/VisibilityTracker;->hasVisibleActivities:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetstartedActivityCount(Lcom/miui/leakcanary/VisibilityTracker;)I
    .registers 1

    iget p0, p0, Lcom/miui/leakcanary/VisibilityTracker;->startedActivityCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputhasVisibleActivities(Lcom/miui/leakcanary/VisibilityTracker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/leakcanary/VisibilityTracker;->hasVisibleActivities:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputscreenOn(Lcom/miui/leakcanary/VisibilityTracker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/leakcanary/VisibilityTracker;->screenOn:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputstartedActivityCount(Lcom/miui/leakcanary/VisibilityTracker;I)V
    .registers 2

    iput p1, p0, Lcom/miui/leakcanary/VisibilityTracker;->startedActivityCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateVisible(Lcom/miui/leakcanary/VisibilityTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/leakcanary/VisibilityTracker;->updateVisible()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/Application;)V
    .registers 4
    .param p1, "application"    # Landroid/app/Application;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/leakcanary/VisibilityTracker;->startedActivityCount:I

    .line 19
    iput-boolean v0, p0, Lcom/miui/leakcanary/VisibilityTracker;->hasVisibleActivities:Z

    .line 20
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/leakcanary/VisibilityTracker;->screenOn:Z

    .line 21
    iput-boolean v0, p0, Lcom/miui/leakcanary/VisibilityTracker;->lastVisible:Z

    .line 23
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/leakcanary/VisibilityTracker;->listeners:Ljava/util/Set;

    .line 26
    new-instance v0, Lcom/miui/leakcanary/VisibilityTracker$1;

    invoke-direct {v0, p0}, Lcom/miui/leakcanary/VisibilityTracker$1;-><init>(Lcom/miui/leakcanary/VisibilityTracker;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 47
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    new-instance v1, Lcom/miui/leakcanary/VisibilityTracker$2;

    invoke-direct {v1, p0}, Lcom/miui/leakcanary/VisibilityTracker$2;-><init>(Lcom/miui/leakcanary/VisibilityTracker;)V

    invoke-virtual {p1, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    return-void
.end method

.method static synthetic blacklist lambda$updateVisible$0(ZLcom/miui/leakcanary/OnVisibilityChangedListener;)V
    .registers 2
    .param p0, "visible"    # Z
    .param p1, "it"    # Lcom/miui/leakcanary/OnVisibilityChangedListener;

    .line 62
    invoke-interface {p1, p0}, Lcom/miui/leakcanary/OnVisibilityChangedListener;->onVisibilityChanged(Z)V

    return-void
.end method

.method private blacklist updateVisible()V
    .registers 4

    .line 59
    iget-boolean v0, p0, Lcom/miui/leakcanary/VisibilityTracker;->screenOn:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/miui/leakcanary/VisibilityTracker;->hasVisibleActivities:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 60
    .local v0, "visible":Z
    :goto_b
    iget-boolean v1, p0, Lcom/miui/leakcanary/VisibilityTracker;->lastVisible:Z

    if-eq v0, v1, :cond_1b

    .line 61
    iput-boolean v0, p0, Lcom/miui/leakcanary/VisibilityTracker;->lastVisible:Z

    .line 62
    iget-object v1, p0, Lcom/miui/leakcanary/VisibilityTracker;->listeners:Ljava/util/Set;

    new-instance v2, Lcom/miui/leakcanary/VisibilityTracker$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/miui/leakcanary/VisibilityTracker$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 64
    :cond_1b
    return-void
.end method


# virtual methods
.method public blacklist registerVisibilityListener(Lcom/miui/leakcanary/OnVisibilityChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/miui/leakcanary/OnVisibilityChangedListener;

    .line 67
    iget-object v0, p0, Lcom/miui/leakcanary/VisibilityTracker;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method
