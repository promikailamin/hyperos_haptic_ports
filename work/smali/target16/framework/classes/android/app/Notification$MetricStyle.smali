.class public final Landroid/app/Notification$MetricStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetricStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$MetricStyle$MetricView;
    }
.end annotation


# static fields
.field private static final blacklist MAX_METRICS:I = 0x3


# instance fields
.field private final blacklist mMetrics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$Metric;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 11685
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 11683
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MetricStyle;->mMetrics:Ljava/util/List;

    .line 11686
    return-void
.end method

.method private blacklist bindMetricStyleMetrics(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Landroid/widget/RemoteViews;
    .registers 16

    .line 11854
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_186

    .line 11855
    invoke-static {}, Landroid/app/Notification$MetricStyle$MetricView;->-$$Nest$sfgetVIEWS()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$MetricStyle$MetricView;

    .line 11856
    iget-object v3, p0, Landroid/app/Notification$MetricStyle;->mMetrics:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x8

    if-ge v1, v3, :cond_17b

    .line 11857
    invoke-virtual {v2}, Landroid/app/Notification$MetricStyle$MetricView;->containerId()I

    move-result v3

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11858
    iget-object v3, p0, Landroid/app/Notification$MetricStyle;->mMetrics:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$Metric;

    .line 11859
    invoke-virtual {v3}, Landroid/app/Notification$Metric;->getValue()Landroid/app/Notification$Metric$MetricValue;

    move-result-object v5

    .line 11860
    iget-object v6, p0, Landroid/app/Notification$MetricStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v6}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Metric$MetricValue;->toValueString(Landroid/content/Context;)Landroid/app/Notification$Metric$MetricValue$ValueString;

    move-result-object v6

    .line 11864
    if-eqz p3, :cond_67

    .line 11865
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->metricStyleUnitInLabel()Z

    move-result v7

    if-eqz v7, :cond_62

    .line 11866
    invoke-virtual {v6}, Landroid/app/Notification$Metric$MetricValue$ValueString;->subtext()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_62

    .line 11867
    iget-object v7, p0, Landroid/app/Notification$MetricStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v7}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v7

    .line 11869
    invoke-virtual {v3}, Landroid/app/Notification$Metric;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6}, Landroid/app/Notification$Metric$MetricValue$ValueString;->subtext()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    .line 11867
    const v9, 0x1040724

    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_7c

    .line 11871
    :cond_62
    invoke-virtual {v3}, Landroid/app/Notification$Metric;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_7c

    .line 11875
    :cond_67
    iget-object v7, p0, Landroid/app/Notification$MetricStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v7}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v7

    .line 11877
    invoke-virtual {v3}, Landroid/app/Notification$Metric;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 11875
    const v9, 0x1040723

    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 11880
    :goto_7c
    iget-object v8, p0, Landroid/app/Notification$MetricStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$MetricStyle$MetricView;->labelId()I

    move-result v9

    invoke-static {v8, p1, v9, p2}, Landroid/app/Notification$Builder;->-$$Nest$msetTextViewColorSecondary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 11881
    invoke-virtual {v2}, Landroid/app/Notification$MetricStyle$MetricView;->labelId()I

    move-result v8

    invoke-virtual {p1, v8, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 11882
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->metricStyleUnitInLabel()Z

    move-result v7

    if-eqz v7, :cond_9a

    .line 11883
    invoke-virtual {v2}, Landroid/app/Notification$MetricStyle$MetricView;->unitId()I

    move-result v7

    invoke-virtual {p1, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_c4

    .line 11884
    :cond_9a
    if-eqz p3, :cond_c4

    .line 11885
    iget-object v7, p0, Landroid/app/Notification$MetricStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$MetricStyle$MetricView;->unitId()I

    move-result v8

    invoke-static {v7, p1, v8, p2}, Landroid/app/Notification$Builder;->-$$Nest$msetTextViewColorSecondary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 11886
    invoke-virtual {v2}, Landroid/app/Notification$MetricStyle$MetricView;->unitId()I

    move-result v7

    .line 11887
    invoke-virtual {v6}, Landroid/app/Notification$Metric$MetricValue$ValueString;->subtext()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b5

    .line 11888
    move v8, v4

    goto :goto_b6

    .line 11889
    :cond_b5
    move v8, v0

    .line 11886
    :goto_b6
    invoke-virtual {p1, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11890
    invoke-virtual {v2}, Landroid/app/Notification$MetricStyle$MetricView;->unitId()I

    move-result v7

    invoke-virtual {v6}, Landroid/app/Notification$Metric$MetricValue$ValueString;->subtext()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 11893
    :cond_c4
    :goto_c4
    instance-of v7, v5, Landroid/app/Notification$Metric$TimeDifference;

    if-eqz v7, :cond_158

    check-cast v5, Landroid/app/Notification$Metric$TimeDifference;

    .line 11894
    invoke-virtual {v2}, Landroid/app/Notification$MetricStyle$MetricView;->textValueId()I

    move-result v6

    invoke-virtual {p1, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11895
    invoke-virtual {v2}, Landroid/app/Notification$MetricStyle$MetricView;->chronometerId()I

    move-result v4

    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11896
    iget-object v4, p0, Landroid/app/Notification$MetricStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$MetricStyle$MetricView;->chronometerId()I

    move-result v6

    invoke-static {v4, p1, v6, p2}, Landroid/app/Notification$Builder;->-$$Nest$msetTextViewColorSecondary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 11899
    nop

    .line 11900
    invoke-virtual {v2}, Landroid/app/Notification$MetricStyle$MetricView;->chronometerId()I

    move-result v4

    invoke-virtual {v5}, Landroid/app/Notification$Metric$TimeDifference;->isTimer()Z

    move-result v6

    .line 11899
    invoke-virtual {p1, v4, v6}, Landroid/widget/RemoteViews;->setChronometerCountDown(IZ)V

    .line 11901
    invoke-virtual {v2}, Landroid/app/Notification$MetricStyle$MetricView;->chronometerId()I

    move-result v4

    .line 11903
    invoke-virtual {v5}, Landroid/app/Notification$Metric$TimeDifference;->getFormat()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_fa

    move v6, v7

    goto :goto_fb

    :cond_fa
    move v6, v0

    .line 11901
    :goto_fb
    const-string/jumbo v8, "setUseAdaptiveFormat"

    invoke-virtual {p1, v4, v8, v6}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 11905
    invoke-virtual {v5}, Landroid/app/Notification$Metric$TimeDifference;->getZeroTime()Ljava/time/Instant;

    move-result-object v4

    if-eqz v4, :cond_114

    .line 11906
    invoke-virtual {v2}, Landroid/app/Notification$MetricStyle$MetricView;->chronometerId()I

    move-result v2

    .line 11907
    invoke-virtual {v5}, Landroid/app/Notification$Metric$TimeDifference;->getZeroTime()Ljava/time/Instant;

    move-result-object v3

    .line 11906
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4, v7}, Landroid/widget/RemoteViews;->setChronometer(ILjava/time/Instant;Ljava/lang/String;Z)V

    goto :goto_17a

    .line 11909
    :cond_114
    invoke-virtual {v5}, Landroid/app/Notification$Metric$TimeDifference;->getZeroElapsedRealtime()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_12d

    .line 11910
    invoke-virtual {v2}, Landroid/app/Notification$MetricStyle$MetricView;->chronometerId()I

    move-result v7

    .line 11911
    invoke-virtual {v5}, Landroid/app/Notification$Metric$TimeDifference;->getZeroElapsedRealtime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 11910
    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    goto :goto_17a

    .line 11913
    :cond_12d
    invoke-virtual {v5}, Landroid/app/Notification$Metric$TimeDifference;->getPausedDuration()Ljava/time/Duration;

    move-result-object v4

    if-eqz v4, :cond_13f

    .line 11914
    invoke-virtual {v2}, Landroid/app/Notification$MetricStyle$MetricView;->chronometerId()I

    move-result v2

    .line 11915
    invoke-virtual {v5}, Landroid/app/Notification$Metric$TimeDifference;->getPausedDuration()Ljava/time/Duration;

    move-result-object v3

    .line 11914
    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setChronometerPaused(ILjava/time/Duration;)V

    goto :goto_17a

    .line 11917
    :cond_13f
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No zeroTime or pausedDuration for running TimeDifference in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11922
    :cond_158
    invoke-virtual {v2}, Landroid/app/Notification$MetricStyle$MetricView;->chronometerId()I

    move-result v3

    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11923
    invoke-virtual {v2}, Landroid/app/Notification$MetricStyle$MetricView;->textValueId()I

    move-result v3

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11924
    iget-object v3, p0, Landroid/app/Notification$MetricStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$MetricStyle$MetricView;->textValueId()I

    move-result v4

    invoke-static {v3, p1, v4, p2}, Landroid/app/Notification$Builder;->-$$Nest$msetTextViewColorSecondary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 11926
    invoke-virtual {v2}, Landroid/app/Notification$MetricStyle$MetricView;->textValueId()I

    move-result v2

    invoke-virtual {v6}, Landroid/app/Notification$Metric$MetricValue$ValueString;->text()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 11928
    :goto_17a
    goto :goto_182

    .line 11929
    :cond_17b
    invoke-virtual {v2}, Landroid/app/Notification$MetricStyle$MetricView;->containerId()I

    move-result v2

    invoke-virtual {p1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11854
    :goto_182
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 11932
    :cond_186
    return-object p1
.end method


# virtual methods
.method public blacklist addExtras(Landroid/os/Bundle;)V
    .registers 5

    .line 11760
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 11762
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11763
    iget-object v1, p0, Landroid/app/Notification$MetricStyle;->mMetrics:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$Metric;

    .line 11764
    invoke-static {v2}, Landroid/app/Notification$Metric;->-$$Nest$smtoBundle(Landroid/app/Notification$Metric;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11765
    goto :goto_e

    .line 11766
    :cond_22
    const-string v1, "android.metrics"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 11767
    return-void
.end method

.method public blacklist addMetric(Landroid/app/Notification$Metric;)Landroid/app/Notification$MetricStyle;
    .registers 3

    .line 11708
    iget-object v0, p0, Landroid/app/Notification$MetricStyle;->mMetrics:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Notification$Metric;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11709
    return-object p0
.end method

.method public blacklist areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .registers 8

    .line 11737
    const/4 v0, 0x1

    if-eqz p1, :cond_5f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_e

    goto :goto_5f

    .line 11742
    :cond_e
    check-cast p1, Landroid/app/Notification$MetricStyle;

    .line 11743
    invoke-virtual {p0}, Landroid/app/Notification$MetricStyle;->getMetrics()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 11744
    invoke-virtual {p1}, Landroid/app/Notification$MetricStyle;->getMetrics()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-eq v1, v3, :cond_2c

    .line 11745
    return v0

    .line 11747
    :cond_2c
    const/4 v1, 0x0

    move v3, v1

    .line 11748
    :goto_2e
    if-ge v3, v2, :cond_5e

    .line 11747
    invoke-virtual {p0}, Landroid/app/Notification$MetricStyle;->getMetrics()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5e

    .line 11748
    invoke-virtual {p1}, Landroid/app/Notification$MetricStyle;->getMetrics()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5e

    .line 11749
    invoke-virtual {p0}, Landroid/app/Notification$MetricStyle;->getMetrics()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Notification$MetricStyle;->getMetrics()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    .line 11750
    return v0

    .line 11748
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 11754
    :cond_5e
    return v1

    .line 11738
    :cond_5f
    :goto_5f
    return v0
.end method

.method public blacklist displayCustomViewInline()Z
    .registers 2

    .line 11805
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 11690
    instance-of v0, p1, Landroid/app/Notification$MetricStyle;

    if-eqz v0, :cond_13

    check-cast p1, Landroid/app/Notification$MetricStyle;

    .line 11691
    if-ne p0, p1, :cond_a

    const/4 p1, 0x1

    return p1

    .line 11692
    :cond_a
    iget-object v0, p0, Landroid/app/Notification$MetricStyle;->mMetrics:Ljava/util/List;

    iget-object p1, p1, Landroid/app/Notification$MetricStyle;->mMetrics:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 11690
    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getMetrics()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$Metric;",
            ">;"
        }
    .end annotation

    .line 11731
    iget-object v0, p0, Landroid/app/Notification$MetricStyle;->mMetrics:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 11697
    iget-object v0, p0, Landroid/app/Notification$MetricStyle;->mMetrics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist makeContentView()Landroid/widget/RemoteViews;
    .registers 4

    .line 11811
    iget-object v0, p0, Landroid/app/Notification$MetricStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    .line 11812
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$MetricStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 11813
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 11814
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 11815
    invoke-virtual {v0, v2}, Landroid/app/Notification$StandardTemplateParams;->hideRightIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 11816
    new-instance v2, Landroid/app/Notification$TemplateBindResult;

    invoke-direct {v2, v1}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification-IA;)V

    .line 11817
    iget-object v1, p0, Landroid/app/Notification$MetricStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 11818
    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetCollapsedMetricLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v1

    .line 11817
    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Notification$MetricStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 11819
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Landroid/app/Notification$MetricStyle;->bindMetricStyleMetrics(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist makeExpandedContentView()Landroid/widget/RemoteViews;
    .registers 5

    .line 11839
    iget-object v0, p0, Landroid/app/Notification$MetricStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_EXPANDED:I

    .line 11840
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 11841
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v2, p0, Landroid/app/Notification$MetricStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 11842
    invoke-virtual {v0, v2}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 11843
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 11844
    const v3, 0x1020208

    invoke-virtual {v0, v3}, Landroid/app/Notification$StandardTemplateParams;->titleViewId(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 11845
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->hideRightIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 11846
    new-instance v3, Landroid/app/Notification$TemplateBindResult;

    invoke-direct {v3, v2}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification-IA;)V

    .line 11847
    iget-object v2, p0, Landroid/app/Notification$MetricStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 11848
    invoke-static {v2}, Landroid/app/Notification$Builder;->-$$Nest$mgetExpandedMetricLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v2

    .line 11847
    invoke-virtual {p0, v2, v0, v3}, Landroid/app/Notification$MetricStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 11849
    invoke-direct {p0, v2, v0, v1}, Landroid/app/Notification$MetricStyle;->bindMetricStyleMetrics(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist makeHeadsUpContentView()Landroid/widget/RemoteViews;
    .registers 4

    .line 11825
    iget-object v0, p0, Landroid/app/Notification$MetricStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    .line 11826
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$MetricStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 11827
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 11828
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 11829
    invoke-virtual {v0, v2}, Landroid/app/Notification$StandardTemplateParams;->hideRightIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 11830
    new-instance v2, Landroid/app/Notification$TemplateBindResult;

    invoke-direct {v2, v1}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification-IA;)V

    .line 11831
    iget-object v1, p0, Landroid/app/Notification$MetricStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 11832
    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetCollapsedMetricLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v1

    .line 11831
    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Notification$MetricStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 11833
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Landroid/app/Notification$MetricStyle;->bindMetricStyleMetrics(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist restoreFromExtras(Landroid/os/Bundle;)V
    .registers 4

    .line 11773
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 11775
    iget-object v0, p0, Landroid/app/Notification$MetricStyle;->mMetrics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11776
    const-string v0, "android.metrics"

    const-class v1, Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    .line 11778
    if-eqz p1, :cond_2e

    .line 11779
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 11780
    if-eqz v0, :cond_2d

    .line 11781
    invoke-static {v0}, Landroid/app/Notification$Metric;->-$$Nest$smfromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric;

    move-result-object v0

    .line 11782
    if-eqz v0, :cond_2d

    .line 11783
    invoke-virtual {p0, v0}, Landroid/app/Notification$MetricStyle;->addMetric(Landroid/app/Notification$Metric;)Landroid/app/Notification$MetricStyle;

    .line 11786
    :cond_2d
    goto :goto_16

    .line 11788
    :cond_2e
    return-void
.end method

.method public blacklist setMetrics(Ljava/util/List;)Landroid/app/Notification$MetricStyle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$Metric;",
            ">;)",
            "Landroid/app/Notification$MetricStyle;"
        }
    .end annotation

    .line 11718
    iget-object v0, p0, Landroid/app/Notification$MetricStyle;->mMetrics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11719
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$Metric;

    .line 11720
    iget-object v1, p0, Landroid/app/Notification$MetricStyle;->mMetrics:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$Metric;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11721
    goto :goto_9

    .line 11722
    :cond_21
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 11702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MetricStyle{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$MetricStyle;->mMetrics:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist validate(Landroid/content/Context;)V
    .registers 3

    .line 11793
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->validate(Landroid/content/Context;)V

    .line 11794
    iget-object p1, p0, Landroid/app/Notification$MetricStyle;->mMetrics:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    .line 11797
    return-void

    .line 11795
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A MetricStyle must have at least one Metric"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
