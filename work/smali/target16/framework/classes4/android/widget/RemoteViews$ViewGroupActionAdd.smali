.class Landroid/widget/RemoteViews$ViewGroupActionAdd;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewGroupActionAdd"
.end annotation


# static fields
.field static final blacklist NO_ID:I = -0x1


# instance fields
.field private greylist-max-o mIndex:I

.field private greylist-max-r mNestedViews:Landroid/widget/RemoteViews;

.field private blacklist mStableId:I

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method public static synthetic blacklist $r8$lambda$rBlBi8K6ngja77O0hGAUvrG9EY4(Landroid/widget/RemoteViews$ViewGroupActionAdd;Landroid/view/View;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->lambda$initActionAsync$0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNestedViews(Landroid/widget/RemoteViews$ViewGroupActionAdd;)Landroid/widget/RemoteViews;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 4138
    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;II)V

    .line 4139
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;I)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 4142
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;II)V

    .line 4143
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;II)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 4145
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 4146
    iput p2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mViewId:I

    .line 4147
    iput-object p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    .line 4148
    iput p4, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    .line 4149
    iput p5, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    .line 4150
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/widget/RemoteViews;->-$$Nest$mconfigureAsChild(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 4151
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/content/pm/ApplicationInfo;I)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 4153
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 4154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mViewId:I

    .line 4155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    .line 4156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    .line 4157
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v3

    const/4 v6, 0x0

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;ILandroid/widget/RemoteViews-IA;)V

    iput-object v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    .line 4158
    iget-object p2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmApplyFlags(Landroid/widget/RemoteViews;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 4159
    return-void
.end method

.method private blacklist findViewIndexToRecycle(Landroid/view/ViewGroup;Landroid/widget/RemoteViews;)I
    .registers 5

    .line 4174
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result p2

    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_1a

    .line 4176
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4177
    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$smgetStableId(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    if-ne v0, v1, :cond_17

    .line 4178
    return p2

    .line 4175
    :cond_17
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 4181
    :cond_1a
    const/4 p1, -0x1

    return p1
.end method

.method private blacklist insertNewView(Landroid/content/Context;Landroid/widget/RemoteViews$ViewTree;Landroid/widget/RemoteViews$ActionApplyParams;Ljava/lang/Runnable;)Landroid/widget/RemoteViews$Action;
    .registers 13

    .line 4304
    iget-object v0, p2, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    .line 4305
    invoke-static {v3}, Landroid/widget/RemoteViews;->-$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result v0

    .line 4306
    iget-object v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Landroid/widget/RemoteViews;->-$$Nest$mgetInternalAsyncApplyTask(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/util/SizeF;Landroid/view/View;)Landroid/widget/RemoteViews$AsyncApplyTask;

    move-result-object p1

    .line 4308
    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Void;

    invoke-virtual {p1, p3}, Landroid/widget/RemoteViews$AsyncApplyTask;->doInBackground([Ljava/lang/Void;)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v4

    .line 4310
    if-eqz v4, :cond_50

    .line 4313
    iget p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    const/4 v1, -0x1

    if-eq p3, v1, :cond_2b

    .line 4314
    invoke-static {p1}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$fgetmResult(Landroid/widget/RemoteViews$AsyncApplyTask;)Landroid/view/View;

    move-result-object p3

    iget v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    invoke-static {p3, v1}, Landroid/widget/RemoteViews;->-$$Nest$smsetStableId(Landroid/view/View;I)V

    .line 4319
    :cond_2b
    iget p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    if-ltz p3, :cond_33

    iget p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    move v7, p3

    goto :goto_34

    :cond_33
    move v7, v0

    .line 4320
    :goto_34
    invoke-virtual {p2, v4, v7}, Landroid/widget/RemoteViews$ViewTree;->addChild(Landroid/widget/RemoteViews$ViewTree;I)V

    .line 4321
    if-ltz v0, :cond_46

    .line 4322
    add-int/lit8 v0, v0, 0x1

    invoke-static {p2}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {v3, v0, p2}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    .line 4325
    :cond_46
    new-instance v1, Landroid/widget/RemoteViews$ViewGroupActionAdd$2;

    move-object v2, p0

    move-object v5, p4

    move-object v6, v3

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Landroid/widget/RemoteViews$ViewGroupActionAdd$2;-><init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;Landroid/widget/RemoteViews$AsyncApplyTask;Landroid/widget/RemoteViews$ViewTree;Ljava/lang/Runnable;Landroid/view/ViewGroup;I)V

    return-object v1

    .line 4311
    :cond_50
    move-object v3, p1

    new-instance p1, Landroid/widget/RemoteViews$ActionException;

    invoke-static {v3}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$fgetmError(Landroid/widget/RemoteViews$AsyncApplyTask;)Ljava/lang/Exception;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method private synthetic blacklist lambda$initActionAsync$0(Landroid/view/View;)Z
    .registers 3

    .line 4258
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$smgetStableId(Landroid/view/View;)I

    move-result p1

    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method static synthetic blacklist lambda$initActionAsync$1(Landroid/view/ViewGroup;II)V
    .registers 3

    .line 4293
    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeViews(II)V

    return-void
.end method

.method static synthetic blacklist lambda$initActionAsync$2()V
    .registers 0

    .line 4299
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 11

    .line 4186
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4187
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    .line 4189
    if-nez v2, :cond_10

    .line 4190
    return-void

    .line 4196
    :cond_10
    invoke-static {v2}, Landroid/widget/RemoteViews;->-$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result p1

    .line 4197
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-static {v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$mgetRemoteViewsToApply(Landroid/widget/RemoteViews;Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 4199
    iget-object v3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v3}, Landroid/widget/RemoteViews;->-$$Nest$fgetmApplyFlags(Landroid/widget/RemoteViews;)I

    move-result v3

    and-int/lit8 v3, v3, 0x6

    .line 4200
    if-eqz v3, :cond_27

    invoke-virtual {v0, v3}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 4202
    :cond_27
    const/4 v6, -0x1

    if-ltz p1, :cond_57

    iget v3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    if-eq v3, v6, :cond_57

    .line 4206
    invoke-direct {p0, v2, v0}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->findViewIndexToRecycle(Landroid/view/ViewGroup;Landroid/widget/RemoteViews;)I

    move-result v3

    .line 4207
    if-ltz v3, :cond_57

    .line 4208
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4209
    invoke-virtual {v0, v4}, Landroid/widget/RemoteViews;->canRecycleView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 4210
    if-ge p1, v3, :cond_44

    .line 4211
    sub-int/2addr v3, p1

    invoke-virtual {v2, p1, v3}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 4213
    :cond_44
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-static {v2, p1, v3}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    .line 4214
    invoke-static {v0, v1, v4, p2, p3}, Landroid/widget/RemoteViews;->-$$Nest$mreapplyNestedViews(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V

    .line 4215
    return-void

    .line 4219
    :cond_51
    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 4225
    :cond_57
    const/4 v4, 0x0

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/widget/RemoteViews;->-$$Nest$mapply(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/view/View;

    move-result-object p2

    .line 4226
    iget p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    if-eq p3, v6, :cond_67

    .line 4227
    iget p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    invoke-static {p2, p3}, Landroid/widget/RemoteViews;->-$$Nest$smsetStableId(Landroid/view/View;I)V

    .line 4229
    :cond_67
    iget p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    if-ltz p3, :cond_6e

    iget p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    goto :goto_6f

    :cond_6e
    move p3, p1

    :goto_6f
    invoke-virtual {v2, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 4230
    if-ltz p1, :cond_7d

    .line 4232
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    invoke-static {v2, p1, p2}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    .line 4234
    :cond_7d
    return-void
.end method

.method public blacklist canWriteToProto()Z
    .registers 2

    .line 4369
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 4347
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/widget/RemoteViews$Action;
    .registers 12

    .line 4241
    invoke-virtual {p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    .line 4242
    iget p2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object p2

    .line 4243
    if-eqz p2, :cond_af

    iget-object v0, p2, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_13

    goto/16 :goto_af

    .line 4246
    :cond_13
    iget-object v0, p2, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    .line 4249
    iget-object p1, p1, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 4254
    invoke-static {v3}, Landroid/widget/RemoteViews;->-$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result p1

    .line 4255
    if-ltz p1, :cond_a2

    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a2

    .line 4256
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-static {v0, v2}, Landroid/widget/RemoteViews;->-$$Nest$mgetRemoteViewsToApply(Landroid/widget/RemoteViews;Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 4257
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;)V

    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews$ViewTree;->findChildIndex(ILjava/util/function/Predicate;)I

    move-result v0

    .line 4259
    if-ltz v0, :cond_9e

    .line 4263
    invoke-static {p2}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews$ViewTree;

    .line 4265
    iget-object v5, v4, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/widget/RemoteViews;->canRecycleView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 4266
    if-le v0, p1, :cond_53

    .line 4267
    sub-int v5, v0, p1

    invoke-virtual {p2, p1, v5}, Landroid/widget/RemoteViews$ViewTree;->removeChildren(II)V

    .line 4269
    :cond_53
    add-int/lit8 v5, p1, 0x1

    invoke-static {p2}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {v3, v5, p2}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    .line 4270
    const/4 v6, 0x0

    iget-object v7, v4, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    const/4 v4, 0x0

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Landroid/widget/RemoteViews;->-$$Nest$mgetInternalAsyncApplyTask(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/util/SizeF;Landroid/view/View;)Landroid/widget/RemoteViews$AsyncApplyTask;

    move-result-object p2

    .line 4274
    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Void;

    invoke-virtual {p2, p3}, Landroid/widget/RemoteViews$AsyncApplyTask;->doInBackground([Ljava/lang/Void;)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v4

    .line 4275
    if-eqz v4, :cond_7d

    .line 4278
    new-instance v1, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;

    move-object v2, p0

    move v6, p1

    move v5, v0

    move-object v7, v3

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;-><init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;Landroid/widget/RemoteViews$AsyncApplyTask;Landroid/widget/RemoteViews$ViewTree;IILandroid/view/ViewGroup;)V

    return-object v1

    .line 4276
    :cond_7d
    move-object v3, p2

    new-instance p1, Landroid/widget/RemoteViews$ActionException;

    invoke-static {v3}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$fgetmError(Landroid/widget/RemoteViews$AsyncApplyTask;)Ljava/lang/Exception;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 4291
    :cond_88
    move v6, p1

    move-object v5, p3

    move p3, v0

    move-object p1, v2

    move-object v2, p0

    sub-int v0, p3, v6

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v6, v0}, Landroid/widget/RemoteViews$ViewTree;->removeChildren(II)V

    .line 4292
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda1;

    invoke-direct {v0, v3, v6, p3}, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda1;-><init>(Landroid/view/ViewGroup;II)V

    invoke-direct {p0, p1, p2, v5, v0}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->insertNewView(Landroid/content/Context;Landroid/widget/RemoteViews$ViewTree;Landroid/widget/RemoteViews$ActionApplyParams;Ljava/lang/Runnable;)Landroid/widget/RemoteViews$Action;

    move-result-object p1

    return-object p1

    .line 4259
    :cond_9e
    move-object v5, p3

    move-object p1, v2

    move-object v2, p0

    goto :goto_a5

    .line 4255
    :cond_a2
    move-object v5, p3

    move-object p1, v2

    move-object v2, p0

    .line 4299
    :goto_a5
    new-instance p3, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda2;

    invoke-direct {p3}, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, p1, p2, v5, p3}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->insertNewView(Landroid/content/Context;Landroid/widget/RemoteViews$ViewTree;Landroid/widget/RemoteViews$ActionApplyParams;Ljava/lang/Runnable;)Landroid/widget/RemoteViews$Action;

    move-result-object p1

    return-object p1

    .line 4244
    :cond_af
    :goto_af
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o mergeBehavior()I
    .registers 2

    .line 4337
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o prefersAsyncApply()Z
    .registers 2

    .line 4342
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->prefersAsyncApply()Z

    move-result v0

    return v0
.end method

.method public blacklist setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V
    .registers 3

    .line 4170
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$mconfigureAsChild(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 4171
    return-void
.end method

.method public blacklist visitIcons(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/Icon;",
            ">;)V"
        }
    .end annotation

    .line 4364
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitIcons(Ljava/util/function/Consumer;)V

    .line 4365
    return-void
.end method

.method protected blacklist visitRemoteViews(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/widget/RemoteViews;",
            ">;)V"
        }
    .end annotation

    .line 4354
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitRemoteViews(Ljava/util/function/Consumer;)V

    .line 4355
    return-void
.end method

.method public blacklist visitUris(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 4359
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 4360
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 4162
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4163
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4164
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4165
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4166
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 8

    .line 4374
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->remoteViewsProto()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 4375
    :cond_7
    const-wide v0, 0x10b00000013L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4376
    iget v2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mViewId:I

    .line 4377
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p3

    .line 4376
    const-wide v2, 0x10900000001L

    invoke-virtual {p1, v2, v3, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4378
    const-wide v2, 0x10500000003L

    iget p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    invoke-virtual {p1, v2, v3, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4379
    const-wide v2, 0x10500000004L

    iget p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    invoke-virtual {p1, v2, v3, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4380
    const-wide v2, 0x10b00000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 4381
    iget-object p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {p3, p2, p1}, Landroid/widget/RemoteViews;->writePreviewToProto(Landroid/content/Context;Landroid/util/proto/ProtoOutputStream;)V

    .line 4382
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4383
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4384
    return-void
.end method
