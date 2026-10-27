.class public Landroid/appwidget/AppWidgetHostView$InteractionLogger;
.super Ljava/lang/Object;
.source "AppWidgetHostView.java"

# interfaces
.implements Landroid/widget/RemoteViews$InteractionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InteractionLogger"
.end annotation


# instance fields
.field private final blacklist mEvent:Landroid/appwidget/AppWidgetEvent$Builder;

.field private blacklist mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field private blacklist mIsTracking:Z

.field private blacklist mIsVisible:Z

.field final synthetic blacklist this$0:Landroid/appwidget/AppWidgetHostView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mcollectWidgetEvent(Landroid/appwidget/AppWidgetHostView$InteractionLogger;)Landroid/appwidget/AppWidgetEvent;
    .registers 1

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->collectWidgetEvent()Landroid/appwidget/AppWidgetEvent;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monPositionChanged(Landroid/appwidget/AppWidgetHostView$InteractionLogger;)V
    .registers 1

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->onPositionChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTrackingChanged(Landroid/appwidget/AppWidgetHostView$InteractionLogger;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->onTrackingChanged(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monVisibilityAggregated(Landroid/appwidget/AppWidgetHostView$InteractionLogger;)V
    .registers 1

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->onVisibilityAggregated()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monWindowFocusChanged(Landroid/appwidget/AppWidgetHostView$InteractionLogger;)V
    .registers 1

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->onWindowFocusChanged()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/appwidget/AppWidgetHostView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1065
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1058
    new-instance p1, Landroid/appwidget/AppWidgetEvent$Builder;

    invoke-direct {p1}, Landroid/appwidget/AppWidgetEvent$Builder;-><init>()V

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mEvent:Landroid/appwidget/AppWidgetEvent$Builder;

    .line 1060
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 1062
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mIsVisible:Z

    .line 1063
    iput-boolean p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mIsTracking:Z

    .line 1066
    return-void
.end method

.method constructor blacklist <init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1068
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1058
    new-instance p1, Landroid/appwidget/AppWidgetEvent$Builder;

    invoke-direct {p1}, Landroid/appwidget/AppWidgetEvent$Builder;-><init>()V

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mEvent:Landroid/appwidget/AppWidgetEvent$Builder;

    .line 1060
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 1062
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mIsVisible:Z

    .line 1063
    iput-boolean p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mIsTracking:Z

    .line 1069
    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 1070
    return-void
.end method

.method private blacklist applyScrollOffset(Landroid/graphics/Rect;)V
    .registers 5

    .line 1144
    if-nez p1, :cond_3

    return-void

    .line 1145
    :cond_3
    nop

    .line 1146
    nop

    .line 1147
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_b
    if-eqz v0, :cond_2e

    .line 1148
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_29

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v2

    if-nez v2, :cond_20

    .line 1149
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v2

    if-eqz v2, :cond_29

    .line 1150
    :cond_20
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 1151
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    .line 1152
    goto :goto_30

    .line 1147
    :cond_29
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_b

    :cond_2e
    const/4 v0, 0x0

    move v1, v0

    .line 1155
    :goto_30
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1156
    return-void
.end method

.method private blacklist collectWidgetEvent()Landroid/appwidget/AppWidgetEvent;
    .registers 4

    .line 1202
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->engagementMetrics()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 1204
    :cond_8
    monitor-enter p0

    .line 1205
    :try_start_9
    iget-boolean v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mIsVisible:Z

    if-eqz v0, :cond_11

    .line 1208
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->updateVisibilityLocked(Z)V

    .line 1210
    :cond_11
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mEvent:Landroid/appwidget/AppWidgetEvent$Builder;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget v2, v2, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetEvent$Builder;->setAppWidgetId(I)Landroid/appwidget/AppWidgetEvent$Builder;

    .line 1211
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mEvent:Landroid/appwidget/AppWidgetEvent$Builder;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetEvent$Builder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1213
    monitor-exit p0

    return-object v1

    .line 1215
    :cond_24
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mEvent:Landroid/appwidget/AppWidgetEvent$Builder;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetEvent$Builder;->build()Landroid/appwidget/AppWidgetEvent;

    move-result-object v0

    .line 1216
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mEvent:Landroid/appwidget/AppWidgetEvent$Builder;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetEvent$Builder;->clear()V

    .line 1218
    monitor-exit p0

    return-object v0

    .line 1219
    :catchall_31
    move-exception v0

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_31

    throw v0
.end method

.method private blacklist getMetricsId(Landroid/view/View;)I
    .registers 4

    .line 1117
    const v0, 0x10204b5

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 1118
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_12

    check-cast v0, Ljava/lang/Integer;

    .line 1119
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 1121
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    return p1
.end method

.method private blacklist logName()Ljava/lang/String;
    .registers 3

    .line 1223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget-object v1, v1, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v1, :cond_f

    const-string/jumbo v1, "null"

    goto :goto_19

    :cond_f
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget-object v1, v1, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget v1, v1, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist onPositionChanged()V
    .registers 3

    .line 1129
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->engagementMetrics()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1130
    :cond_7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1131
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetHostView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1132
    invoke-direct {p0, v0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->applyScrollOffset(Landroid/graphics/Rect;)V

    .line 1133
    monitor-enter p0

    .line 1134
    :try_start_18
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mEvent:Landroid/appwidget/AppWidgetEvent$Builder;

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetEvent$Builder;->setPosition(Landroid/graphics/Rect;)Landroid/appwidget/AppWidgetEvent$Builder;

    .line 1135
    monitor-exit p0

    goto :goto_22

    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_1f

    throw v0

    .line 1137
    :cond_22
    :goto_22
    return-void
.end method

.method private blacklist onTrackingChanged(Z)V
    .registers 3

    .line 1173
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->engagementMetrics()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1174
    :cond_7
    monitor-enter p0

    .line 1175
    :try_start_8
    iput-boolean p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mIsTracking:Z

    .line 1176
    iget-boolean p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mIsTracking:Z

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->updateVisibilityLocked(Z)V

    .line 1177
    monitor-exit p0

    .line 1178
    return-void

    .line 1177
    :catchall_11
    move-exception p1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    throw p1
.end method

.method private blacklist onVisibilityAggregated()V
    .registers 2

    .line 1166
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->engagementMetrics()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1167
    :cond_7
    monitor-enter p0

    .line 1168
    :try_start_8
    iget-boolean v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mIsTracking:Z

    invoke-direct {p0, v0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->updateVisibilityLocked(Z)V

    .line 1169
    monitor-exit p0

    .line 1170
    return-void

    .line 1169
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private blacklist onWindowFocusChanged()V
    .registers 2

    .line 1159
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->engagementMetrics()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1160
    :cond_7
    monitor-enter p0

    .line 1161
    :try_start_8
    iget-boolean v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mIsTracking:Z

    invoke-direct {p0, v0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->updateVisibilityLocked(Z)V

    .line 1162
    monitor-exit p0

    .line 1163
    return-void

    .line 1162
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private blacklist updateVisibilityLocked(Z)V
    .registers 3

    .line 1185
    iget-boolean v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mIsVisible:Z

    .line 1186
    if-eqz p1, :cond_16

    iget-object p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->isVisibleToUser()Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 1187
    :goto_17
    if-nez v0, :cond_21

    if-eqz p1, :cond_21

    .line 1189
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mEvent:Landroid/appwidget/AppWidgetEvent$Builder;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetEvent$Builder;->startVisibility()Landroid/appwidget/AppWidgetEvent$Builder;

    goto :goto_2a

    .line 1191
    :cond_21
    if-eqz v0, :cond_2a

    if-nez p1, :cond_2a

    .line 1193
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mEvent:Landroid/appwidget/AppWidgetEvent$Builder;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetEvent$Builder;->endVisibility()Landroid/appwidget/AppWidgetEvent$Builder;

    .line 1197
    :cond_2a
    :goto_2a
    iput-boolean p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mIsVisible:Z

    .line 1198
    return-void
.end method


# virtual methods
.method public blacklist getEvent()Landroid/appwidget/AppWidgetEvent;
    .registers 2

    .line 1077
    monitor-enter p0

    .line 1078
    :try_start_1
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mEvent:Landroid/appwidget/AppWidgetEvent$Builder;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetEvent$Builder;->build()Landroid/appwidget/AppWidgetEvent;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1079
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public blacklist onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 6

    .line 1085
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->engagementMetrics()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1086
    monitor-enter p0

    .line 1087
    :try_start_7
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mEvent:Landroid/appwidget/AppWidgetEvent$Builder;

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->getMetricsId(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetEvent$Builder;->addClickedId(I)Landroid/appwidget/AppWidgetEvent$Builder;

    .line 1088
    monitor-exit p0

    goto :goto_15

    :catchall_12
    move-exception p1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p1

    .line 1090
    :cond_15
    :goto_15
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    # getter for: Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/appwidget/AppWidgetHostView;->access$100(Landroid/appwidget/AppWidgetHostView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 1091
    if-eqz v0, :cond_28

    .line 1092
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget v1, v1, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->noteAppWidgetTapped(I)V

    .line 1095
    :cond_28
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    if-eqz v0, :cond_33

    .line 1096
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/RemoteViews$InteractionHandler;->onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result p1

    return p1

    .line 1098
    :cond_33
    nop

    .line 1099
    invoke-virtual {p3, p1}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    move-result-object p3

    .line 1098
    invoke-static {p1, p2, p3}, Landroid/widget/RemoteViews;->startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z

    move-result p1

    return p1
.end method

.method public blacklist onScroll(Landroid/widget/AbsListView;)V
    .registers 4

    .line 1105
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->engagementMetrics()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1107
    :cond_7
    monitor-enter p0

    .line 1108
    :try_start_8
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mEvent:Landroid/appwidget/AppWidgetEvent$Builder;

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->getMetricsId(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetEvent$Builder;->addScrolledId(I)Landroid/appwidget/AppWidgetEvent$Builder;

    .line 1109
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_1c

    .line 1110
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    if-eqz v0, :cond_1b

    .line 1111
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-interface {v0, p1}, Landroid/widget/RemoteViews$InteractionHandler;->onScroll(Landroid/widget/AbsListView;)V

    .line 1113
    :cond_1b
    return-void

    .line 1109
    :catchall_1c
    move-exception p1

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p1
.end method
