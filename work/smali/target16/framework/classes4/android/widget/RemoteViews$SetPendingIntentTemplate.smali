.class Landroid/widget/RemoteViews$SetPendingIntentTemplate;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetPendingIntentTemplate"
.end annotation


# instance fields
.field greylist-max-r mPendingIntentTemplate:Landroid/app/PendingIntent;


# direct methods
.method public static synthetic blacklist $r8$lambda$HZunZfjaLDh4Ro7VuCHx2dZp1Is(Landroid/widget/RemoteViews$SetPendingIntentTemplate;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->lambda$apply$0(Landroid/widget/RemoteViews$ActionApplyParams;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/app/PendingIntent;)V
    .registers 4

    .line 1156
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 1157
    iput p1, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->mViewId:I

    .line 1158
    iput-object p2, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->mPendingIntentTemplate:Landroid/app/PendingIntent;

    .line 1159
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 1161
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 1162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->mViewId:I

    .line 1163
    invoke-static {p1}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->mPendingIntentTemplate:Landroid/app/PendingIntent;

    .line 1164
    return-void
.end method

.method private blacklist findRemoteResponseTag(Landroid/view/View;)Landroid/widget/RemoteViews$RemoteResponse;
    .registers 6

    .line 1197
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1199
    :cond_4
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 1200
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1202
    :goto_c
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3f

    .line 1203
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 1204
    const v2, 0x1020307

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 1205
    instance-of v3, v2, Landroid/widget/RemoteViews$RemoteResponse;

    if-eqz v3, :cond_26

    check-cast v2, Landroid/widget/RemoteViews$RemoteResponse;

    return-object v2

    .line 1206
    :cond_26
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-nez v2, :cond_2b

    goto :goto_c

    .line 1208
    :cond_2b
    check-cast p1, Landroid/view/ViewGroup;

    .line 1209
    const/4 v2, 0x0

    :goto_2e
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3e

    .line 1210
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1209
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 1212
    :cond_3e
    goto :goto_c

    .line 1214
    :cond_3f
    return-object v0
.end method

.method private synthetic blacklist lambda$apply$0(Landroid/widget/RemoteViews$ActionApplyParams;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7

    .line 1181
    invoke-direct {p0, p3}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->findRemoteResponseTag(Landroid/view/View;)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object p2

    .line 1182
    if-eqz p2, :cond_b

    .line 1183
    iget-object p1, p1, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-static {p2, p3, p1}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$mhandleViewInteraction(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 1185
    :cond_b
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 4

    .line 1173
    iget p2, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1174
    if-nez p1, :cond_9

    return-void

    .line 1177
    :cond_9
    instance-of p2, p1, Landroid/widget/AdapterView;

    if-eqz p2, :cond_1e

    .line 1178
    check-cast p1, Landroid/widget/AdapterView;

    .line 1180
    new-instance p2, Landroid/widget/RemoteViews$SetPendingIntentTemplate$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Landroid/widget/RemoteViews$SetPendingIntentTemplate$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteViews$SetPendingIntentTemplate;Landroid/widget/RemoteViews$ActionApplyParams;)V

    .line 1186
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1187
    iget-object p2, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->mPendingIntentTemplate:Landroid/app/PendingIntent;

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setTag(Ljava/lang/Object;)V

    .line 1188
    nop

    .line 1193
    return-void

    .line 1189
    :cond_1e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot setPendingIntentTemplate on a view which is notan AdapterView (id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->mViewId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RemoteViews"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    return-void
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 1219
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1167
    iget p2, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1168
    iget-object p2, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->mPendingIntentTemplate:Landroid/app/PendingIntent;

    invoke-static {p2, p1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 1169
    return-void
.end method
