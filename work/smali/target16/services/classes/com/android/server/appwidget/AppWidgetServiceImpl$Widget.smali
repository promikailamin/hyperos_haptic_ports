.class public final Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# instance fields
.field public appWidgetId:I

.field public final eventBuilder:Landroid/appwidget/AppWidgetEvent$Builder;

.field public host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

.field public isFirstConfigActivityPending:Z

.field public maskedViews:Landroid/widget/RemoteViews;

.field public options:Landroid/os/Bundle;

.field public provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

.field public restoredId:I

.field public trackingUpdate:Z

.field public updateSequenceNos:Landroid/util/SparseLongArray;

.field public views:Landroid/widget/RemoteViews;


# direct methods
.method public static bridge synthetic -$$Nest$mclearMaskedViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->clearMaskedViewsLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreplaceWithMaskedViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->replaceWithMaskedViewsLocked(Landroid/widget/RemoteViews;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 6532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6541
    new-instance v0, Landroid/util/SparseLongArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    const/4 v0, 0x0

    .line 6542
    iput-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->trackingUpdate:Z

    .line 6543
    iput-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->isFirstConfigActivityPending:Z

    .line 6544
    new-instance v0, Landroid/appwidget/AppWidgetEvent$Builder;

    invoke-direct {v0}, Landroid/appwidget/AppWidgetEvent$Builder;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->eventBuilder:Landroid/appwidget/AppWidgetEvent$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearMaskedViewsLocked()Z
    .registers 2

    .line 6557
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 6558
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getEffectiveViewsLocked()Landroid/widget/RemoteViews;
    .registers 2

    .line 6566
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public final replaceWithMaskedViewsLocked(Landroid/widget/RemoteViews;)Z
    .registers 2

    .line 6552
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    const/4 p0, 0x1

    return p0
.end method

.method public saveWidgetEventIfNeededLocked(Landroid/app/usage/UsageStatsManagerInternal;)V
    .registers 19

    move-object/from16 v0, p0

    .line 6576
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->eventBuilder:Landroid/appwidget/AppWidgetEvent$Builder;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetEvent$Builder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b6

    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v1, :cond_10

    goto/16 :goto_b6

    .line 6580
    :cond_10
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->eventBuilder:Landroid/appwidget/AppWidgetEvent$Builder;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetEvent$Builder;->build()Landroid/appwidget/AppWidgetEvent;

    move-result-object v1

    .line 6581
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 6582
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 6583
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetEvent;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v4

    move-object/from16 v5, p1

    .line 6581
    invoke-virtual {v5, v2, v3, v4}, Landroid/app/usage/UsageStatsManagerInternal;->reportUserInteractionEvent(Ljava/lang/String;ILandroid/os/PersistableBundle;)V

    .line 6585
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    const/4 v3, -0x1

    if-eqz v2, :cond_3e

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    move v5, v2

    goto :goto_3f

    :cond_3e
    move v5, v3

    .line 6587
    :goto_3f
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v2, :cond_4d

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    :goto_4b
    move-object v6, v2

    goto :goto_4f

    :cond_4d
    const/4 v2, 0x0

    goto :goto_4b

    .line 6589
    :goto_4f
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetEvent;->getPosition()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_73

    .line 6590
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetEvent;->getPosition()Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 6591
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetEvent;->getPosition()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 6592
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetEvent;->getPosition()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 6593
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetEvent;->getPosition()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move v14, v2

    move v13, v3

    move v15, v4

    move/from16 v16, v7

    goto :goto_78

    :cond_73
    move v13, v3

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    .line 6603
    :goto_78
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetEvent;->getStart()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v7

    .line 6604
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetEvent;->getEnd()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v9

    .line 6605
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetEvent;->getVisibleDuration()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v11

    const/16 v4, 0x497

    .line 6600
    invoke-static/range {v4 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;JJJIIII)V

    .line 6611
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 6612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reported widget interaction usage event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6614
    :cond_b1
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->eventBuilder:Landroid/appwidget/AppWidgetEvent$Builder;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetEvent$Builder;->clear()V

    :cond_b6
    :goto_b6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 6548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppWidgetId{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
