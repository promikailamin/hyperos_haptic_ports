.class public Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;
.super Ljava/lang/Object;
.source "AppWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceCollectionCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;
    }
.end annotation


# instance fields
.field private final blacklist mActiveConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Intent$FilterComparison;",
            "Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mTimeOut:J


# direct methods
.method public static synthetic blacklist $r8$lambda$ZDcQMTsLKFfCK1gXzOZS0Db8mUU(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;Landroid/content/Intent$FilterComparison;)Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;
    .registers 2

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->lambda$connectAndConsumeInner$1(Landroid/content/Intent$FilterComparison;)Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$vO091O5HPTCJtLLeDDIsj4Qq3kQ(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;Landroid/content/Intent;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->lambda$connectAndConsume$0(Landroid/content/Intent;Ljava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmActiveConnections(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->mActiveConnections:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeOut(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)J
    .registers 3

    iget-wide v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->mTimeOut:J

    return-wide v0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;J)V
    .registers 5

    .line 1712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1709
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->mActiveConnections:Ljava/util/Map;

    .line 1713
    iput-object p1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->mContext:Landroid/content/Context;

    .line 1714
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->mHandler:Landroid/os/Handler;

    .line 1715
    iput-wide p2, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->mTimeOut:J

    .line 1716
    return-void
.end method

.method private blacklist connectAndConsumeInner(Landroid/content/Intent;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 1727
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->mActiveConnections:Ljava/util/Map;

    new-instance v1, Landroid/content/Intent$FilterComparison;

    invoke-direct {v1, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    new-instance p1, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$$ExternalSyntheticLambda1;-><init>(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;

    .line 1729
    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->add(Ljava/util/function/Consumer;)V

    .line 1730
    return-void
.end method

.method private synthetic blacklist lambda$connectAndConsume$0(Landroid/content/Intent;Ljava/util/function/Consumer;)V
    .registers 3

    .line 1723
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->connectAndConsumeInner(Landroid/content/Intent;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic blacklist lambda$connectAndConsumeInner$1(Landroid/content/Intent$FilterComparison;)Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;
    .registers 3

    .line 1728
    new-instance v0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;

    invoke-direct {v0, p0, p1}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;-><init>(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;Landroid/content/Intent$FilterComparison;)V

    return-object v0
.end method


# virtual methods
.method public blacklist connectAndConsume(Landroid/content/Intent;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 1723
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$$ExternalSyntheticLambda0;-><init>(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;Landroid/content/Intent;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1724
    return-void
.end method
