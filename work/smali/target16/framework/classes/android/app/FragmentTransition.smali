.class Landroid/app/FragmentTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentTransition$FragmentContainerTransition;
    }
.end annotation


# static fields
.field private static final blacklist INVERSE_OPS:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smsetViewVisibility(Ljava/util/ArrayList;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/app/FragmentTransition;->INVERSE_OPS:[I

    return-void

    :array_a
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
    .end array-data
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroid/util/ArrayMap;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 571
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_20

    .line 572
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 573
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 574
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 577
    :cond_20
    return-void
.end method

.method public static blacklist addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1064
    if-nez p0, :cond_3

    .line 1065
    return-void

    .line 1067
    :cond_3
    instance-of v0, p0, Landroid/transition/TransitionSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 1068
    check-cast p0, Landroid/transition/TransitionSet;

    .line 1069
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v0

    .line 1070
    nop

    :goto_f
    if-ge v1, v0, :cond_3e

    .line 1071
    invoke-virtual {p0, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v2

    .line 1072
    invoke-static {v2, p1}, Landroid/app/FragmentTransition;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 1070
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1074
    :cond_1b
    invoke-static {p0}, Landroid/app/FragmentTransition;->hasSimpleTarget(Landroid/transition/Transition;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1075
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v0

    .line 1076
    invoke-static {v0}, Landroid/app/FragmentTransition;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1078
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1079
    nop

    :goto_30
    if-ge v1, v0, :cond_3f

    .line 1080
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 1079
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 1074
    :cond_3e
    nop

    .line 1084
    :cond_3f
    return-void
.end method

.method private static blacklist addToFirstInLastOut(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord;",
            "Landroid/app/BackStackRecord$Op;",
            "Landroid/util/SparseArray<",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1249
    iget-object v1, p1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 1250
    if-nez v1, :cond_5

    .line 1251
    return-void

    .line 1253
    :cond_5
    iget v6, v1, Landroid/app/Fragment;->mContainerId:I

    .line 1254
    if-nez v6, :cond_a

    .line 1255
    return-void

    .line 1257
    :cond_a
    if-eqz p3, :cond_13

    sget-object v0, Landroid/app/FragmentTransition;->INVERSE_OPS:[I

    iget p1, p1, Landroid/app/BackStackRecord$Op;->cmd:I

    aget p1, v0, p1

    goto :goto_15

    :cond_13
    iget p1, p1, Landroid/app/BackStackRecord$Op;->cmd:I

    .line 1258
    :goto_15
    nop

    .line 1259
    nop

    .line 1260
    nop

    .line 1261
    nop

    .line 1262
    const/4 v0, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_110

    :pswitch_1e
    move p1, v0

    move v7, p1

    move v8, v7

    goto/16 :goto_a5

    .line 1264
    :pswitch_23
    if-eqz p4, :cond_35

    .line 1265
    iget-boolean p1, v1, Landroid/app/Fragment;->mHiddenChanged:Z

    if-eqz p1, :cond_33

    iget-boolean p1, v1, Landroid/app/Fragment;->mHidden:Z

    if-nez p1, :cond_33

    iget-boolean p1, v1, Landroid/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_33

    move p1, v2

    goto :goto_37

    :cond_33
    move p1, v0

    goto :goto_37

    .line 1268
    :cond_35
    iget-boolean p1, v1, Landroid/app/Fragment;->mHidden:Z

    .line 1270
    :goto_37
    nop

    .line 1271
    move v7, v0

    move v8, v7

    move v0, p1

    move p1, v2

    goto/16 :goto_a5

    .line 1282
    :pswitch_3e
    if-eqz p4, :cond_50

    .line 1283
    iget-boolean p1, v1, Landroid/app/Fragment;->mHiddenChanged:Z

    if-eqz p1, :cond_4e

    iget-boolean p1, v1, Landroid/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_4e

    iget-boolean p1, v1, Landroid/app/Fragment;->mHidden:Z

    if-eqz p1, :cond_4e

    move p1, v2

    goto :goto_5b

    :cond_4e
    move p1, v0

    goto :goto_5b

    .line 1286
    :cond_50
    iget-boolean p1, v1, Landroid/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_5a

    iget-boolean p1, v1, Landroid/app/Fragment;->mHidden:Z

    if-nez p1, :cond_5a

    move p1, v2

    goto :goto_5b

    :cond_5a
    move p1, v0

    .line 1288
    :goto_5b
    nop

    .line 1289
    move v8, p1

    move p1, v0

    move v7, v2

    goto :goto_a5

    .line 1292
    :pswitch_60
    if-eqz p4, :cond_81

    .line 1293
    iget-boolean p1, v1, Landroid/app/Fragment;->mAdded:Z

    if-nez p1, :cond_7f

    iget-object p1, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_7f

    iget-object p1, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1294
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7f

    iget-object p1, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1295
    invoke-virtual {p1}, Landroid/view/View;->getTransitionAlpha()F

    move-result p1

    const/4 v3, 0x0

    cmpl-float p1, p1, v3

    if-lez p1, :cond_7f

    move p1, v2

    goto :goto_8c

    :cond_7f
    move p1, v0

    goto :goto_8c

    .line 1297
    :cond_81
    iget-boolean p1, v1, Landroid/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_8b

    iget-boolean p1, v1, Landroid/app/Fragment;->mHidden:Z

    if-nez p1, :cond_8b

    move p1, v2

    goto :goto_8c

    :cond_8b
    move p1, v0

    .line 1299
    :goto_8c
    move v8, p1

    move p1, v0

    move v7, v2

    goto :goto_a5

    .line 1274
    :pswitch_90
    if-eqz p4, :cond_95

    .line 1275
    iget-boolean p1, v1, Landroid/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_a0

    .line 1277
    :cond_95
    iget-boolean p1, v1, Landroid/app/Fragment;->mAdded:Z

    if-nez p1, :cond_9f

    iget-boolean p1, v1, Landroid/app/Fragment;->mHidden:Z

    if-nez p1, :cond_9f

    move p1, v2

    goto :goto_a0

    :cond_9f
    move p1, v0

    .line 1279
    :goto_a0
    nop

    .line 1280
    move v7, v0

    move v8, v7

    move v0, p1

    move p1, v2

    .line 1302
    :goto_a5
    invoke-virtual {p2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/FragmentTransition$FragmentContainerTransition;

    .line 1303
    if-eqz v0, :cond_ba

    .line 1304
    nop

    .line 1305
    invoke-static {v3, p2, v6}, Landroid/app/FragmentTransition;->ensureContainer(Landroid/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroid/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v3

    .line 1306
    iput-object v1, v3, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    .line 1307
    iput-boolean p3, v3, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 1308
    iput-object p0, v3, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroid/app/BackStackRecord;

    move-object v9, v3

    goto :goto_bb

    .line 1303
    :cond_ba
    move-object v9, v3

    .line 1310
    :goto_bb
    const/4 v10, 0x0

    if-nez p4, :cond_f0

    if-eqz p1, :cond_f0

    .line 1311
    if-eqz v9, :cond_c8

    iget-object p1, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    if-ne p1, v1, :cond_c8

    .line 1312
    iput-object v10, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    .line 1319
    :cond_c8
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    .line 1320
    iget p1, v1, Landroid/app/Fragment;->mState:I

    if-ge p1, v2, :cond_f0

    iget p1, v0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-lt p1, v2, :cond_f0

    iget-object p1, v0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    .line 1321
    invoke-virtual {p1}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x18

    if-lt p1, v2, :cond_f0

    iget-boolean p1, p0, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez p1, :cond_f0

    .line 1323
    invoke-virtual {v0, v1}, Landroid/app/FragmentManagerImpl;->makeActive(Landroid/app/Fragment;)V

    .line 1324
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 1327
    :cond_f0
    if-eqz v8, :cond_103

    if-eqz v9, :cond_f8

    iget-object p1, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    if-nez p1, :cond_103

    .line 1328
    :cond_f8
    nop

    .line 1329
    invoke-static {v9, p2, v6}, Landroid/app/FragmentTransition;->ensureContainer(Landroid/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroid/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v9

    .line 1330
    iput-object v1, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    .line 1331
    iput-boolean p3, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 1332
    iput-object p0, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/app/BackStackRecord;

    .line 1335
    :cond_103
    if-nez p4, :cond_10f

    if-eqz v7, :cond_10f

    if-eqz v9, :cond_10f

    iget-object p0, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    if-ne p0, v1, :cond_10f

    .line 1337
    iput-object v10, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    .line 1339
    :cond_10f
    return-void

    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_90
        :pswitch_1e
        :pswitch_60
        :pswitch_3e
        :pswitch_23
        :pswitch_60
        :pswitch_90
    .end packed-switch
.end method

.method private static blacklist bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 962
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 963
    invoke-static {p0, p1, v0}, Landroid/app/FragmentTransition;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 964
    return-void

    .line 966
    :cond_b
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 967
    move p1, v0

    :goto_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_3b

    .line 968
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 969
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_38

    .line 970
    check-cast v1, Landroid/view/ViewGroup;

    .line 971
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 972
    const/4 v3, 0x0

    :goto_26
    if-ge v3, v2, :cond_38

    .line 973
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 974
    invoke-static {p0, v4, v0}, Landroid/app/FragmentTransition;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    move-result v5

    if-nez v5, :cond_35

    .line 975
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 972
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 967
    :cond_38
    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    .line 980
    :cond_3b
    return-void
.end method

.method public static blacklist calculateFragments(Landroid/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord;",
            "Landroid/util/SparseArray<",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .line 1205
    iget-object v0, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1206
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_18

    .line 1207
    iget-object v3, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackStackRecord$Op;

    .line 1208
    invoke-static {p0, v3, p1, v1, p2}, Landroid/app/FragmentTransition;->addToFirstInLastOut(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    .line 1206
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1210
    :cond_18
    return-void
.end method

.method private static blacklist calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/ArrayMap;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 145
    add-int/lit8 p4, p4, -0x1

    :goto_7
    if-lt p4, p3, :cond_5c

    .line 146
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 147
    invoke-virtual {v1, p0}, Landroid/app/BackStackRecord;->interactsWith(I)Z

    move-result v2

    if-nez v2, :cond_16

    .line 148
    goto :goto_59

    .line 150
    :cond_16
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 151
    iget-object v3, v1, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v3, :cond_59

    .line 152
    iget-object v3, v1, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 155
    if-eqz v2, :cond_31

    .line 156
    iget-object v2, v1, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 157
    iget-object v1, v1, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    goto :goto_38

    .line 159
    :cond_31
    iget-object v2, v1, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 160
    iget-object v1, v1, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    .line 162
    :goto_38
    const/4 v4, 0x0

    :goto_39
    if-ge v4, v3, :cond_59

    .line 163
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 164
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 165
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 166
    if-eqz v7, :cond_53

    .line 167
    invoke-virtual {v0, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    .line 169
    :cond_53
    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :goto_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 145
    :cond_59
    :goto_59
    add-int/lit8 p4, p4, -0x1

    goto :goto_7

    .line 174
    :cond_5c
    return-object v0
.end method

.method public static blacklist calculatePopFragments(Landroid/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord;",
            "Landroid/util/SparseArray<",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .line 1222
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-virtual {v0}, Landroid/app/FragmentContainer;->onHasView()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1223
    return-void

    .line 1225
    :cond_b
    iget-object v0, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1226
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_13
    if-ltz v0, :cond_23

    .line 1227
    iget-object v2, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/BackStackRecord$Op;

    .line 1228
    invoke-static {p0, v2, p1, v1, p2}, Landroid/app/FragmentTransition;->addToFirstInLastOut(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    .line 1226
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 1230
    :cond_23
    return-void
.end method

.method private static blacklist callSharedElementStartEnd(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Landroid/app/Fragment;",
            "Z",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .line 918
    if-eqz p2, :cond_7

    .line 919
    invoke-virtual {p1}, Landroid/app/Fragment;->getEnterTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object p0

    goto :goto_b

    .line 920
    :cond_7
    invoke-virtual {p0}, Landroid/app/Fragment;->getEnterTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object p0

    .line 921
    :goto_b
    if-eqz p0, :cond_42

    .line 922
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 923
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 924
    const/4 v0, 0x0

    if-nez p3, :cond_1c

    move v1, v0

    goto :goto_20

    :cond_1c
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 925
    :goto_20
    nop

    :goto_21
    if-ge v0, v1, :cond_38

    .line 926
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 929
    :cond_38
    const/4 p3, 0x0

    if-eqz p4, :cond_3f

    .line 930
    invoke-virtual {p0, p2, p1, p3}, Landroid/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_42

    .line 932
    :cond_3f
    invoke-virtual {p0, p2, p1, p3}, Landroid/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 935
    :cond_42
    :goto_42
    return-void
.end method

.method private static blacklist captureInSharedElements(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;)Landroid/util/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/transition/TransitionSet;",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 764
    iget-object v0, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    .line 765
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 766
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_78

    if-eqz p1, :cond_78

    if-nez v1, :cond_11

    goto :goto_78

    .line 770
    :cond_11
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 771
    invoke-virtual {v1, p1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 775
    iget-object v1, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroid/app/BackStackRecord;

    .line 776
    iget-boolean p2, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    if-eqz p2, :cond_26

    .line 777
    invoke-virtual {v0}, Landroid/app/Fragment;->getExitTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object p2

    .line 778
    iget-object v0, v1, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    goto :goto_2c

    .line 780
    :cond_26
    invoke-virtual {v0}, Landroid/app/Fragment;->getEnterTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object p2

    .line 781
    iget-object v0, v1, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 784
    :goto_2c
    if-eqz v0, :cond_31

    .line 785
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 787
    :cond_31
    if-eqz v0, :cond_74

    if-eqz p2, :cond_74

    .line 788
    invoke-virtual {p2, v0, p1}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 789
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_3e
    if-ltz p2, :cond_77

    .line 790
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 791
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 792
    if-nez v2, :cond_58

    .line 793
    invoke-static {p0, v1}, Landroid/app/FragmentTransition;->findKeyForValue(Landroid/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 794
    if-eqz v1, :cond_70

    .line 795
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_70

    .line 797
    :cond_58
    invoke-virtual {v2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    .line 798
    invoke-static {p0, v1}, Landroid/app/FragmentTransition;->findKeyForValue(Landroid/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 799
    if-eqz v1, :cond_71

    .line 800
    invoke-virtual {v2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_71

    .line 797
    :cond_70
    :goto_70
    nop

    .line 789
    :cond_71
    :goto_71
    add-int/lit8 p2, p2, -0x1

    goto :goto_3e

    .line 805
    :cond_74
    invoke-static {p0, p1}, Landroid/app/FragmentTransition;->retainValues(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 807
    :cond_77
    return-object p1

    .line 767
    :cond_78
    :goto_78
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 768
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist captureOutSharedElements(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;)Landroid/util/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/transition/TransitionSet;",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 709
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6e

    if-nez p1, :cond_9

    goto :goto_6e

    .line 713
    :cond_9
    iget-object p1, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    .line 714
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 715
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 719
    iget-object v1, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/app/BackStackRecord;

    .line 720
    iget-boolean p2, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    if-eqz p2, :cond_24

    .line 721
    invoke-virtual {p1}, Landroid/app/Fragment;->getEnterTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object p1

    .line 722
    iget-object p2, v1, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    goto :goto_2a

    .line 724
    :cond_24
    invoke-virtual {p1}, Landroid/app/Fragment;->getExitTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object p1

    .line 725
    iget-object p2, v1, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 728
    :goto_2a
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 729
    if-eqz p1, :cond_66

    .line 730
    invoke-virtual {p1, p2, v0}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 731
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_38
    if-ltz p1, :cond_6d

    .line 732
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 733
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 734
    if-nez v2, :cond_4c

    .line 735
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    .line 736
    :cond_4c
    invoke-virtual {v2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 737
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 738
    invoke-virtual {v2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    :cond_63
    :goto_63
    add-int/lit8 p1, p1, -0x1

    goto :goto_38

    .line 742
    :cond_66
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 744
    :cond_6d
    return-object v0

    .line 710
    :cond_6e
    :goto_6e
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 711
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;
    .registers 1

    .line 445
    if-eqz p0, :cond_6

    .line 446
    invoke-virtual {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object p0

    .line 448
    :cond_6
    return-object p0
.end method

.method private static blacklist configureEnteringExitingViews(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Landroid/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1104
    nop

    .line 1105
    if-eqz p0, :cond_23

    .line 1106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1107
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    .line 1108
    if-eqz p1, :cond_11

    .line 1109
    invoke-virtual {p1, v0}, Landroid/view/View;->captureTransitioningViews(Ljava/util/List;)V

    .line 1111
    :cond_11
    if-eqz p2, :cond_16

    .line 1112
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1114
    :cond_16
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_24

    .line 1115
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    invoke-static {p0, v0}, Landroid/app/FragmentTransition;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    goto :goto_24

    .line 1105
    :cond_23
    const/4 v0, 0x0

    .line 1119
    :cond_24
    :goto_24
    return-object v0
.end method

.method private static blacklist configureSharedElementsOrdered(Landroid/view/ViewGroup;Landroid/view/View;Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/TransitionSet;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Landroid/transition/Transition;",
            ")",
            "Landroid/transition/TransitionSet;"
        }
    .end annotation

    .line 613
    move-object/from16 v3, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move-object/from16 v0, p7

    iget-object v6, v3, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    .line 614
    iget-object v7, v3, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    .line 616
    const/4 v1, 0x0

    if-eqz v6, :cond_6a

    if-nez v7, :cond_12

    goto :goto_6a

    .line 620
    :cond_12
    iget-boolean v8, v3, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 621
    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object v2, v1

    goto :goto_20

    .line 622
    :cond_1c
    invoke-static {v6, v7, v8}, Landroid/app/FragmentTransition;->getSharedElementTransition(Landroid/app/Fragment;Landroid/app/Fragment;Z)Landroid/transition/TransitionSet;

    move-result-object v2

    .line 624
    :goto_20
    invoke-static {p2, v2, v3}, Landroid/app/FragmentTransition;->captureOutSharedElements(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;)Landroid/util/ArrayMap;

    move-result-object v5

    .line 627
    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2c

    .line 628
    move-object v2, v1

    goto :goto_33

    .line 630
    :cond_2c
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 633
    :goto_33
    if-nez v10, :cond_3a

    if-nez v0, :cond_3a

    if-nez v2, :cond_3a

    .line 635
    return-object v1

    .line 638
    :cond_3a
    const/4 v11, 0x1

    invoke-static {v6, v7, v8, v5, v11}, Landroid/app/FragmentTransition;->callSharedElementStartEnd(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Z)V

    .line 641
    if-eqz v2, :cond_5b

    .line 642
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 643
    invoke-static {v2, p1, v9}, Landroid/app/FragmentTransition;->setSharedElementTargets(Landroid/transition/TransitionSet;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 644
    iget-boolean v11, v3, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 645
    iget-object v12, v3, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/app/BackStackRecord;

    .line 646
    invoke-static {v2, v0, v5, v11, v12}, Landroid/app/FragmentTransition;->setOutEpicenter(Landroid/transition/TransitionSet;Landroid/transition/Transition;Landroid/util/ArrayMap;ZLandroid/app/BackStackRecord;)V

    .line 648
    if-eqz v10, :cond_59

    .line 649
    new-instance v0, Landroid/app/FragmentTransition$3;

    invoke-direct {v0, v1}, Landroid/app/FragmentTransition$3;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v10, v0}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 659
    :cond_59
    move-object v11, v1

    goto :goto_5c

    .line 660
    :cond_5b
    move-object v11, v1

    .line 663
    :goto_5c
    nop

    .line 665
    new-instance v0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda2;

    move-object v5, p1

    move-object v1, p2

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v11}, Landroid/app/FragmentTransition$$ExternalSyntheticLambda2;-><init>(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;ZLjava/util/ArrayList;Landroid/transition/Transition;Landroid/graphics/Rect;)V

    invoke-static {p0, v0}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 689
    return-object v2

    .line 617
    :cond_6a
    :goto_6a
    return-object v1
.end method

.method private static blacklist configureSharedElementsReordered(Landroid/view/ViewGroup;Landroid/view/View;Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/TransitionSet;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Landroid/transition/Transition;",
            ")",
            "Landroid/transition/TransitionSet;"
        }
    .end annotation

    .line 484
    move-object v0, p2

    iget-object p2, p3, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    .line 485
    move-object v1, p3

    iget-object p3, v1, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    .line 486
    if-eqz p2, :cond_10

    .line 487
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 489
    :cond_10
    const/4 v2, 0x0

    if-eqz p2, :cond_8e

    if-nez p3, :cond_17

    goto/16 :goto_8e

    .line 493
    :cond_17
    move-object v3, p4

    iget-boolean p4, v1, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 494
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_22

    move-object v4, v2

    goto :goto_26

    .line 495
    :cond_22
    invoke-static {p2, p3, p4}, Landroid/app/FragmentTransition;->getSharedElementTransition(Landroid/app/Fragment;Landroid/app/Fragment;Z)Landroid/transition/TransitionSet;

    move-result-object v4

    .line 497
    :goto_26
    invoke-static {v0, v4, v1}, Landroid/app/FragmentTransition;->captureOutSharedElements(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;)Landroid/util/ArrayMap;

    move-result-object v5

    .line 500
    move-object v6, p5

    invoke-static {v0, v4, v1}, Landroid/app/FragmentTransition;->captureInSharedElements(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;)Landroid/util/ArrayMap;

    move-result-object p5

    .line 503
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_42

    .line 504
    nop

    .line 505
    if-eqz v5, :cond_3b

    .line 506
    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    .line 508
    :cond_3b
    if-eqz p5, :cond_40

    .line 509
    invoke-virtual {p5}, Landroid/util/ArrayMap;->clear()V

    .line 518
    :cond_40
    move-object v4, v2

    goto :goto_52

    .line 512
    :cond_42
    nop

    .line 513
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 512
    invoke-static {v3, v5, v7}, Landroid/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroid/util/ArrayMap;Ljava/util/Collection;)V

    .line 514
    nop

    .line 515
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 514
    invoke-static {v6, p5, v0}, Landroid/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroid/util/ArrayMap;Ljava/util/Collection;)V

    .line 518
    :goto_52
    if-nez p6, :cond_59

    if-nez p7, :cond_59

    if-nez v4, :cond_59

    .line 520
    return-object v2

    .line 523
    :cond_59
    const/4 v0, 0x1

    invoke-static {p2, p3, p4, v5, v0}, Landroid/app/FragmentTransition;->callSharedElementStartEnd(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Z)V

    .line 527
    if-eqz v4, :cond_82

    .line 528
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    invoke-static {v4, p1, v3}, Landroid/app/FragmentTransition;->setSharedElementTargets(Landroid/transition/TransitionSet;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 530
    iget-boolean p1, v1, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 531
    iget-object v0, v1, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/app/BackStackRecord;

    .line 532
    invoke-static {v4, p7, v5, p1, v0}, Landroid/app/FragmentTransition;->setOutEpicenter(Landroid/transition/TransitionSet;Landroid/transition/Transition;Landroid/util/ArrayMap;ZLandroid/app/BackStackRecord;)V

    .line 534
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 535
    invoke-static {p5, v1, p6, p4}, Landroid/app/FragmentTransition;->getInEpicenterView(Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Landroid/transition/Transition;Z)Landroid/view/View;

    move-result-object p1

    .line 537
    if-eqz p1, :cond_7f

    .line 538
    new-instance p7, Landroid/app/FragmentTransition$2;

    invoke-direct {p7, v2}, Landroid/app/FragmentTransition$2;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p6, p7}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 545
    :cond_7f
    move-object p6, p1

    move-object p7, v2

    goto :goto_85

    .line 546
    :cond_82
    nop

    .line 547
    move-object p6, v2

    move-object p7, p6

    .line 550
    :goto_85
    new-instance p1, Landroid/app/FragmentTransition$$ExternalSyntheticLambda3;

    invoke-direct/range {p1 .. p7}, Landroid/app/FragmentTransition$$ExternalSyntheticLambda3;-><init>(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {p0, p1}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 557
    return-object v4

    .line 490
    :cond_8e
    :goto_8e
    return-object v2
.end method

.method private static blacklist configureTransitionsOrdered(Landroid/app/FragmentManagerImpl;ILandroid/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/util/ArrayMap;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManagerImpl;",
            "I",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 267
    nop

    .line 268
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-virtual {v0}, Landroid/app/FragmentContainer;->onHasView()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 269
    iget-object p0, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-virtual {p0, p1}, Landroid/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    move-object v2, p0

    goto :goto_15

    .line 268
    :cond_14
    move-object v2, v1

    .line 271
    :goto_15
    if-nez v2, :cond_18

    .line 272
    return-void

    .line 274
    :cond_18
    iget-object p0, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    .line 275
    iget-object p1, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    .line 276
    iget-boolean v0, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 277
    iget-boolean v3, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 279
    invoke-static {p0, v0}, Landroid/app/FragmentTransition;->getEnterTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v5

    .line 280
    invoke-static {p1, v3}, Landroid/app/FragmentTransition;->getExitTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v9

    .line 282
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 283
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 285
    move-object v3, p3

    move-object v4, p4

    move-object v8, v5

    move-object v5, p2

    invoke-static/range {v2 .. v9}, Landroid/app/FragmentTransition;->configureSharedElementsOrdered(Landroid/view/ViewGroup;Landroid/view/View;Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object p2

    .line 289
    move-object p3, v6

    move-object v6, v8

    if-nez v6, :cond_43

    if-nez p2, :cond_43

    if-nez v9, :cond_43

    .line 291
    return-void

    .line 294
    :cond_43
    invoke-static {v9, p1, p3, v3}, Landroid/app/FragmentTransition;->configureEnteringExitingViews(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v8

    .line 297
    if-eqz v8, :cond_52

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_50

    goto :goto_52

    :cond_50
    move-object v1, v9

    goto :goto_53

    .line 298
    :cond_52
    :goto_52
    nop

    .line 301
    :goto_53
    if-eqz v6, :cond_58

    .line 304
    invoke-virtual {v6, v3}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 307
    :cond_58
    iget-boolean p1, v5, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    invoke-static {v6, v1, p2, p0, p1}, Landroid/app/FragmentTransition;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object p1

    .line 310
    if-eqz p1, :cond_7f

    .line 311
    invoke-virtual {p1, v4}, Landroid/transition/Transition;->setNameOverrides(Landroid/util/ArrayMap;)V

    .line 312
    move-object v5, v6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 313
    move-object v4, p1

    move-object v9, p2

    move-object v10, v7

    move-object v7, v1

    invoke-static/range {v4 .. v10}, Landroid/app/FragmentTransition;->scheduleRemoveTargets(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/TransitionSet;Ljava/util/ArrayList;)V

    .line 316
    move-object v7, v10

    move-object v4, v6

    move-object v6, v5

    move-object v5, v7

    move-object v7, v4

    move-object v4, v3

    move-object v9, v8

    move-object v3, p0

    move-object v8, v1

    invoke-static/range {v2 .. v9}, Landroid/app/FragmentTransition;->scheduleTargetChange(Landroid/view/ViewGroup;Landroid/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 319
    invoke-static {v2, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 321
    :cond_7f
    return-void
.end method

.method private static blacklist configureTransitionsReordered(Landroid/app/FragmentManagerImpl;ILandroid/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/util/ArrayMap;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManagerImpl;",
            "I",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 195
    move-object/from16 v0, p0

    move-object/from16 v3, p2

    .line 196
    iget-object v1, v0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-virtual {v1}, Landroid/app/FragmentContainer;->onHasView()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 197
    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_18

    .line 196
    :cond_17
    const/4 v0, 0x0

    .line 199
    :goto_18
    if-nez v0, :cond_1b

    .line 200
    return-void

    .line 202
    :cond_1b
    iget-object v8, v3, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    .line 203
    iget-object v9, v3, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    .line 204
    iget-boolean v10, v3, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 205
    iget-boolean v1, v3, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 207
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 208
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 209
    invoke-static {v8, v10}, Landroid/app/FragmentTransition;->getEnterTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v12

    .line 210
    invoke-static {v9, v1}, Landroid/app/FragmentTransition;->getExitTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v14

    .line 212
    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object v6, v12

    move-object v7, v14

    move-object/from16 v5, v17

    invoke-static/range {v0 .. v7}, Landroid/app/FragmentTransition;->configureSharedElementsReordered(Landroid/view/ViewGroup;Landroid/view/View;Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    .line 216
    if-nez v12, :cond_48

    if-nez v3, :cond_48

    if-nez v14, :cond_48

    .line 218
    return-void

    .line 221
    :cond_48
    invoke-static {v14, v9, v4, v1}, Landroid/app/FragmentTransition;->configureEnteringExitingViews(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v15

    .line 224
    invoke-static {v12, v8, v5, v1}, Landroid/app/FragmentTransition;->configureEnteringExitingViews(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v13

    .line 227
    const/4 v1, 0x4

    invoke-static {v13, v1}, Landroid/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 229
    invoke-static {v12, v14, v3, v8, v10}, Landroid/app/FragmentTransition;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v11

    .line 232
    if-eqz v11, :cond_85

    .line 233
    invoke-static {v14, v9, v15}, Landroid/app/FragmentTransition;->replaceHide(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;)V

    .line 234
    move-object/from16 v2, p4

    invoke-virtual {v11, v2}, Landroid/transition/Transition;->setNameOverrides(Landroid/util/ArrayMap;)V

    .line 235
    move-object/from16 v16, v3

    move-object/from16 v17, v5

    invoke-static/range {v11 .. v17}, Landroid/app/FragmentTransition;->scheduleRemoveTargets(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/TransitionSet;Ljava/util/ArrayList;)V

    .line 238
    move-object/from16 v1, v16

    invoke-static {v0, v11}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 239
    const/4 v0, 0x0

    invoke-static {v13, v0}, Landroid/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 241
    if-eqz v1, :cond_85

    .line 242
    invoke-virtual {v1}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 243
    invoke-virtual {v1}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 244
    invoke-static {v1, v4, v5}, Landroid/app/FragmentTransition;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 247
    :cond_85
    return-void
.end method

.method private static blacklist containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .line 987
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_f

    .line 988
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_c

    .line 989
    const/4 p0, 0x1

    return p0

    .line 987
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 992
    :cond_f
    return v0
.end method

.method private static blacklist ensureContainer(Landroid/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroid/app/FragmentTransition$FragmentContainerTransition;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/util/SparseArray<",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            ">;I)",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;"
        }
    .end annotation

    .line 1349
    if-nez p0, :cond_a

    .line 1350
    new-instance p0, Landroid/app/FragmentTransition$FragmentContainerTransition;

    invoke-direct {p0}, Landroid/app/FragmentTransition$FragmentContainerTransition;-><init>()V

    .line 1351
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1353
    :cond_a
    return-object p0
.end method

.method private static blacklist findKeyForValue(Landroid/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 814
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 815
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1b

    .line 816
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 817
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 815
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 820
    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getEnterTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;
    .registers 2

    .line 423
    if-nez p0, :cond_4

    .line 424
    const/4 p0, 0x0

    return-object p0

    .line 426
    :cond_4
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/app/Fragment;->getReenterTransition()Landroid/transition/Transition;

    move-result-object p0

    goto :goto_f

    .line 427
    :cond_b
    invoke-virtual {p0}, Landroid/app/Fragment;->getEnterTransition()Landroid/transition/Transition;

    move-result-object p0

    .line 426
    :goto_f
    invoke-static {p0}, Landroid/app/FragmentTransition;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getExitTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;
    .registers 2

    .line 434
    if-nez p0, :cond_4

    .line 435
    const/4 p0, 0x0

    return-object p0

    .line 437
    :cond_4
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/app/Fragment;->getReturnTransition()Landroid/transition/Transition;

    move-result-object p0

    goto :goto_f

    .line 438
    :cond_b
    invoke-virtual {p0}, Landroid/app/Fragment;->getExitTransition()Landroid/transition/Transition;

    move-result-object p0

    .line 437
    :goto_f
    invoke-static {p0}, Landroid/app/FragmentTransition;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getInEpicenterView(Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Landroid/transition/Transition;Z)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/transition/Transition;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 835
    iget-object p1, p1, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroid/app/BackStackRecord;

    .line 836
    if-eqz p2, :cond_2d

    if-eqz p0, :cond_2d

    iget-object p2, p1, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz p2, :cond_2d

    iget-object p2, p1, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 838
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2d

    .line 839
    const/4 p2, 0x0

    if-eqz p3, :cond_1e

    .line 840
    iget-object p1, p1, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_26

    .line 841
    :cond_1e
    iget-object p1, p1, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 842
    :goto_26
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    .line 844
    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getSharedElementTransition(Landroid/app/Fragment;Landroid/app/Fragment;Z)Landroid/transition/TransitionSet;
    .registers 4

    .line 405
    const/4 v0, 0x0

    if-eqz p0, :cond_21

    if-nez p1, :cond_6

    goto :goto_21

    .line 408
    :cond_6
    if-eqz p2, :cond_d

    .line 409
    invoke-virtual {p1}, Landroid/app/Fragment;->getSharedElementReturnTransition()Landroid/transition/Transition;

    move-result-object p0

    goto :goto_11

    .line 410
    :cond_d
    invoke-virtual {p0}, Landroid/app/Fragment;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object p0

    .line 408
    :goto_11
    invoke-static {p0}, Landroid/app/FragmentTransition;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object p0

    .line 411
    if-nez p0, :cond_18

    .line 412
    return-object v0

    .line 414
    :cond_18
    new-instance p1, Landroid/transition/TransitionSet;

    invoke-direct {p1}, Landroid/transition/TransitionSet;-><init>()V

    .line 415
    invoke-virtual {p1, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 416
    return-object p1

    .line 406
    :cond_21
    :goto_21
    return-object v0
.end method

.method private static blacklist hasSimpleTarget(Landroid/transition/Transition;)Z
    .registers 2

    .line 1090
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/app/FragmentTransition;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1091
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/app/FragmentTransition;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1092
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetTypes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Landroid/app/FragmentTransition;->isNullOrEmpty(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    .line 1090
    :goto_22
    return p0
.end method

.method private static blacklist isNullOrEmpty(Ljava/util/List;)Z
    .registers 1

    .line 1099
    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method static synthetic blacklist lambda$configureSharedElementsOrdered$3(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;ZLjava/util/ArrayList;Landroid/transition/Transition;Landroid/graphics/Rect;)V
    .registers 12

    .line 666
    invoke-static {p0, p1, p2}, Landroid/app/FragmentTransition;->captureInSharedElements(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;)Landroid/util/ArrayMap;

    move-result-object p0

    .line 669
    if-eqz p0, :cond_10

    .line 670
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 671
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    :cond_10
    const/4 p4, 0x0

    invoke-static {p5, p6, p7, p0, p4}, Landroid/app/FragmentTransition;->callSharedElementStartEnd(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Z)V

    .line 676
    if-eqz p1, :cond_30

    .line 677
    invoke-virtual {p1}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 678
    invoke-virtual {p1}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 679
    invoke-static {p1, p8, p3}, Landroid/app/FragmentTransition;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 682
    invoke-static {p0, p2, p9, p7}, Landroid/app/FragmentTransition;->getInEpicenterView(Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Landroid/transition/Transition;Z)Landroid/view/View;

    move-result-object p0

    .line 684
    if-eqz p0, :cond_30

    .line 685
    invoke-virtual {p0, p10}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 688
    :cond_30
    return-void
.end method

.method static synthetic blacklist lambda$configureSharedElementsReordered$2(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 7

    .line 551
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/FragmentTransition;->callSharedElementStartEnd(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Z)V

    .line 553
    if-eqz p4, :cond_9

    .line 554
    invoke-virtual {p4, p5}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 556
    :cond_9
    return-void
.end method

.method static synthetic blacklist lambda$replaceHide$0(Ljava/util/ArrayList;)V
    .registers 2

    .line 335
    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 336
    return-void
.end method

.method static synthetic blacklist lambda$scheduleTargetChange$1(Landroid/transition/Transition;Landroid/view/View;Landroid/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;)V
    .registers 7

    .line 372
    if-eqz p0, :cond_c

    .line 373
    invoke-virtual {p0, p1}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 374
    invoke-static {p0, p2, p3, p1}, Landroid/app/FragmentTransition;->configureEnteringExitingViews(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p0

    .line 376
    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 379
    :cond_c
    if-eqz p5, :cond_21

    .line 380
    if-eqz p6, :cond_1b

    .line 381
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 382
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-static {p6, p5, p0}, Landroid/app/FragmentTransition;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 385
    :cond_1b
    invoke-virtual {p5}, Ljava/util/ArrayList;->clear()V

    .line 386
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_21
    return-void
.end method

.method private static blacklist mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/app/Fragment;Z)Landroid/transition/Transition;
    .registers 6

    .line 1142
    nop

    .line 1143
    const/4 v0, 0x1

    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    if-eqz p3, :cond_14

    .line 1144
    if-eqz p4, :cond_f

    invoke-virtual {p3}, Landroid/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result p3

    goto :goto_13

    .line 1145
    :cond_f
    invoke-virtual {p3}, Landroid/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result p3

    :goto_13
    goto :goto_15

    .line 1153
    :cond_14
    move p3, v0

    :goto_15
    if-eqz p3, :cond_2d

    .line 1155
    new-instance p3, Landroid/transition/TransitionSet;

    invoke-direct {p3}, Landroid/transition/TransitionSet;-><init>()V

    .line 1156
    if-eqz p0, :cond_21

    .line 1157
    invoke-virtual {p3, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1159
    :cond_21
    if-eqz p1, :cond_26

    .line 1160
    invoke-virtual {p3, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1162
    :cond_26
    if-eqz p2, :cond_2b

    .line 1163
    invoke-virtual {p3, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1165
    :cond_2b
    nop

    .line 1166
    goto :goto_5e

    .line 1169
    :cond_2d
    nop

    .line 1170
    if-eqz p1, :cond_44

    if-eqz p0, :cond_44

    .line 1171
    new-instance p3, Landroid/transition/TransitionSet;

    invoke-direct {p3}, Landroid/transition/TransitionSet;-><init>()V

    .line 1172
    invoke-virtual {p3, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object p1

    .line 1173
    invoke-virtual {p1, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object p0

    .line 1174
    invoke-virtual {p0, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    move-result-object p0

    goto :goto_4c

    .line 1175
    :cond_44
    if-eqz p1, :cond_48

    .line 1176
    move-object p0, p1

    goto :goto_4c

    .line 1177
    :cond_48
    if-eqz p0, :cond_4b

    .line 1178
    goto :goto_4c

    .line 1177
    :cond_4b
    const/4 p0, 0x0

    .line 1180
    :goto_4c
    if-eqz p2, :cond_5d

    .line 1181
    new-instance p3, Landroid/transition/TransitionSet;

    invoke-direct {p3}, Landroid/transition/TransitionSet;-><init>()V

    .line 1182
    if-eqz p0, :cond_58

    .line 1183
    invoke-virtual {p3, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1185
    :cond_58
    invoke-virtual {p3, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1186
    nop

    .line 1187
    goto :goto_5e

    .line 1188
    :cond_5d
    move-object p3, p0

    .line 1191
    :goto_5e
    return-object p3
.end method

.method private static blacklist replaceHide(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Landroid/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 330
    if-eqz p1, :cond_2a

    if-eqz p0, :cond_2a

    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_2a

    .line 332
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->setHideReplaced(Z)V

    .line 333
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 334
    iget-object p1, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    new-instance v1, Landroid/app/FragmentTransition$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Landroid/app/FragmentTransition$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p1, v1}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 337
    new-instance p1, Landroid/app/FragmentTransition$1;

    invoke-direct {p1, v0, p2}, Landroid/app/FragmentTransition$1;-><init>(Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 346
    :cond_2a
    return-void
.end method

.method public static blacklist replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1032
    instance-of v0, p0, Landroid/transition/TransitionSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 1033
    check-cast p0, Landroid/transition/TransitionSet;

    .line 1034
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v0

    .line 1035
    nop

    :goto_c
    if-ge v1, v0, :cond_5f

    .line 1036
    invoke-virtual {p0, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v2

    .line 1037
    invoke-static {v2, p1, p2}, Landroid/app/FragmentTransition;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1035
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1039
    :cond_18
    invoke-static {p0}, Landroid/app/FragmentTransition;->hasSimpleTarget(Landroid/transition/Transition;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 1040
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v0

    .line 1041
    if-eqz v0, :cond_60

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_60

    .line 1042
    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1044
    if-nez p2, :cond_38

    move v0, v1

    goto :goto_3c

    :cond_38
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1045
    :goto_3c
    nop

    :goto_3d
    if-ge v1, v0, :cond_4b

    .line 1046
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 1045
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 1048
    :cond_4b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_51
    if-ltz p2, :cond_60

    .line 1049
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 1048
    add-int/lit8 p2, p2, -0x1

    goto :goto_51

    .line 1039
    :cond_5f
    nop

    .line 1053
    :cond_60
    return-void
.end method

.method private static blacklist retainValues(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 897
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1a

    .line 898
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 899
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 900
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 897
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 903
    :cond_1a
    return-void
.end method

.method private static blacklist scheduleRemoveTargets(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/TransitionSet;Ljava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/TransitionSet;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1003
    new-instance v0, Landroid/app/FragmentTransition$5;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/app/FragmentTransition$5;-><init>(Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/TransitionSet;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 1022
    return-void
.end method

.method private static blacklist scheduleTargetChange(Landroid/view/ViewGroup;Landroid/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 371
    new-instance v0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda0;

    move-object v3, p1

    move-object v2, p2

    move-object v4, p3

    move-object v1, p4

    move-object v5, p5

    move-object v7, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v7}, Landroid/app/FragmentTransition$$ExternalSyntheticLambda0;-><init>(Landroid/transition/Transition;Landroid/view/View;Landroid/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;)V

    invoke-static {p0, v0}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 389
    return-void
.end method

.method private static blacklist setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V
    .registers 3

    .line 877
    if-eqz p1, :cond_12

    .line 878
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 879
    invoke-virtual {p1, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 881
    new-instance p1, Landroid/app/FragmentTransition$4;

    invoke-direct {p1, v0}, Landroid/app/FragmentTransition$4;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 888
    :cond_12
    return-void
.end method

.method private static blacklist setOutEpicenter(Landroid/transition/TransitionSet;Landroid/transition/Transition;Landroid/util/ArrayMap;ZLandroid/app/BackStackRecord;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/TransitionSet;",
            "Landroid/transition/Transition;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroid/app/BackStackRecord;",
            ")V"
        }
    .end annotation

    .line 859
    iget-object v0, p4, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_2e

    iget-object v0, p4, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 860
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 861
    const/4 v0, 0x0

    if-eqz p3, :cond_18

    .line 862
    iget-object p3, p4, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_20

    .line 863
    :cond_18
    iget-object p3, p4, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 864
    :goto_20
    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 865
    invoke-static {p0, p2}, Landroid/app/FragmentTransition;->setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V

    .line 867
    if-eqz p1, :cond_2e

    .line 868
    invoke-static {p1, p2}, Landroid/app/FragmentTransition;->setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V

    .line 871
    :cond_2e
    return-void
.end method

.method private static blacklist setSharedElementTargets(Landroid/transition/TransitionSet;Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/TransitionSet;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 945
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v0

    .line 946
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 947
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 948
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1a

    .line 949
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 950
    invoke-static {v0, v3}, Landroid/app/FragmentTransition;->bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V

    .line 948
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 952
    :cond_1a
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    invoke-static {p0, p2}, Landroid/app/FragmentTransition;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 955
    return-void
.end method

.method private static blacklist setViewVisibility(Ljava/util/ArrayList;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1126
    if-nez p0, :cond_3

    .line 1127
    return-void

    .line 1129
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_17

    .line 1130
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1131
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1129
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 1133
    :cond_17
    return-void
.end method

.method static blacklist startTransitions(Landroid/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManagerImpl;",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    .line 90
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    .line 91
    return-void

    .line 93
    :cond_6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 95
    move v1, p3

    :goto_c
    if-ge v1, p4, :cond_2a

    .line 96
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/BackStackRecord;

    .line 97
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 98
    if-eqz v3, :cond_24

    .line 99
    invoke-static {v2, v0, p5}, Landroid/app/FragmentTransition;->calculatePopFragments(Landroid/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    goto :goto_27

    .line 101
    :cond_24
    invoke-static {v2, v0, p5}, Landroid/app/FragmentTransition;->calculateFragments(Landroid/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    .line 95
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 105
    :cond_2a
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_5c

    .line 106
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 108
    const/4 v3, 0x0

    :goto_40
    if-ge v3, v2, :cond_5c

    .line 109
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 110
    invoke-static {v4, p1, p2, p3, p4}, Landroid/app/FragmentTransition;->calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/ArrayMap;

    move-result-object v5

    .line 113
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/FragmentTransition$FragmentContainerTransition;

    .line 115
    if-eqz p5, :cond_56

    .line 116
    invoke-static {p0, v4, v6, v1, v5}, Landroid/app/FragmentTransition;->configureTransitionsReordered(Landroid/app/FragmentManagerImpl;ILandroid/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/util/ArrayMap;)V

    goto :goto_59

    .line 119
    :cond_56
    invoke-static {p0, v4, v6, v1, v5}, Landroid/app/FragmentTransition;->configureTransitionsOrdered(Landroid/app/FragmentManagerImpl;ILandroid/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/util/ArrayMap;)V

    .line 108
    :goto_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 124
    :cond_5c
    return-void
.end method
