.class public Landroid/view/WindowOptions;
.super Ljava/lang/Object;
.source "WindowOptions.java"


# static fields
.field public static final blacklist ANIM_SCENE_TRANSITION:I = 0x1

.field public static final blacklist ANIM_UNDEFINED:I = -0x1

.field public static final blacklist KEY_ANIM_TYPE:Ljava/lang/String; = "android:window.animType"

.field private static final blacklist KEY_EXIT_COORDINATOR_INDEX:Ljava/lang/String; = "android:window.exitCoordinatorIndex"

.field private static final blacklist KEY_TRANSITION_COMPLETE_LISTENER:Ljava/lang/String; = "android:window.transitionCompleteListener"

.field private static final blacklist KEY_TRANSITION_IS_RETURNING:Ljava/lang/String; = "android:window.transitionIsReturning"

.field private static final blacklist KEY_TRANSITION_SHARED_ELEMENTS:Ljava/lang/String; = "android:window.sharedElementNames"

.field private static final blacklist TAG:Ljava/lang/String; = "WindowOptions"


# instance fields
.field private blacklist mAnimationType:I

.field private blacklist mExitCoordinatorIndex:I

.field private blacklist mIsReturning:Z

.field private blacklist mSharedElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTransitionReceiver:Landroid/os/ResultReceiver;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowOptions;->mAnimationType:I

    .line 49
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "opts"    # Landroid/os/Bundle;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowOptions;->mAnimationType:I

    .line 53
    const-string v1, "android:window.animType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/WindowOptions;->mAnimationType:I

    .line 54
    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    .line 55
    const-string v0, "android:window.transitionCompleteListener"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Landroid/view/WindowOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 56
    const-string v0, "android:window.sharedElementNames"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 57
    const-string v0, "android:window.exitCoordinatorIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/view/WindowOptions;->mExitCoordinatorIndex:I

    .line 58
    const/4 v0, 0x0

    const-string v1, "android:window.transitionIsReturning"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowOptions;->mIsReturning:Z

    .line 60
    :cond_34
    return-void
.end method

.method static blacklist makeSceneTransitionAnimation(Landroid/view/WindowExitTransitionCoordinator$WindowExitTransitionCallbacks;Landroid/view/WindowSharedElementCallback;Landroid/view/View;Landroid/view/WindowOptions;[Landroid/util/Pair;)Landroid/view/WindowExitTransitionCoordinator;
    .registers 19
    .param p0, "exitCallbacks"    # Landroid/view/WindowExitTransitionCoordinator$WindowExitTransitionCallbacks;
    .param p1, "callback"    # Landroid/view/WindowSharedElementCallback;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "opts"    # Landroid/view/WindowOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowExitTransitionCoordinator$WindowExitTransitionCallbacks;",
            "Landroid/view/WindowSharedElementCallback;",
            "Landroid/view/View;",
            "Landroid/view/WindowOptions;",
            "[",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/WindowExitTransitionCoordinator;"
        }
    .end annotation

    .line 107
    .local p4, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const/4 v2, 0x1

    iput v2, v0, Landroid/view/WindowOptions;->mAnimationType:I

    .line 108
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v3

    .line 111
    .local v11, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v1, :cond_43

    .line 112
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    array-length v4, v1

    if-ge v3, v4, :cond_43

    .line 113
    aget-object v4, v1, v3

    .line 114
    .local v4, "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 115
    .local v5, "sharedElementName":Ljava/lang/String;
    if-eqz v5, :cond_3b

    .line 118
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/view/View;

    .line 120
    .local v6, "curView":Landroid/view/View;
    if-eqz v6, :cond_33

    .line 123
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/view/View;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v4    # "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    .end local v5    # "sharedElementName":Ljava/lang/String;
    .end local v6    # "curView":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 121
    .restart local v4    # "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    .restart local v5    # "sharedElementName":Ljava/lang/String;
    .restart local v6    # "curView":Landroid/view/View;
    :cond_33
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Shared element must not be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 116
    .end local v6    # "curView":Landroid/view/View;
    :cond_3b
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Shared element name must not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 127
    .end local v3    # "i":I
    .end local v4    # "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    .end local v5    # "sharedElementName":Ljava/lang/String;
    :cond_43
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v12

    .line 128
    .local v12, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v12, :cond_5e

    .line 131
    new-instance v13, Landroid/view/WindowExitTransitionCoordinator;

    const/4 v10, 0x0

    move-object v3, v13

    move-object v4, p0

    move-object v5, v12

    move-object v6, p1

    move-object v7, v2

    move-object v8, v2

    move-object v9, v11

    invoke-direct/range {v3 .. v10}, Landroid/view/WindowExitTransitionCoordinator;-><init>(Landroid/view/WindowExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/view/ViewRootImpl;Landroid/view/WindowSharedElementCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 133
    .local v3, "exit":Landroid/view/WindowExitTransitionCoordinator;
    iput-object v3, v0, Landroid/view/WindowOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 134
    iput-object v2, v0, Landroid/view/WindowOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 135
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/view/WindowOptions;->mIsReturning:Z

    .line 136
    return-object v3

    .line 129
    .end local v3    # "exit":Landroid/view/WindowExitTransitionCoordinator;
    :cond_5e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The fromView does not have a window"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static blacklist makeSceneTransitionAnimation(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)Landroid/view/WindowOptions;
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "sharedElementName"    # Ljava/lang/String;

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/util/Pair;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Landroid/view/WindowOptions;->makeSceneTransitionAnimation(Landroid/view/View;[Landroid/util/Pair;)Landroid/view/WindowOptions;

    move-result-object v0

    return-object v0
.end method

.method static blacklist makeSceneTransitionAnimation(Landroid/view/View;Landroid/view/WindowExitTransitionCoordinator;Ljava/util/ArrayList;)Landroid/view/WindowOptions;
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "exitCoordinator"    # Landroid/view/WindowExitTransitionCoordinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/WindowExitTransitionCoordinator;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/WindowOptions;"
        }
    .end annotation

    .line 143
    .local p2, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/view/WindowOptions;

    invoke-direct {v0}, Landroid/view/WindowOptions;-><init>()V

    .line 144
    .local v0, "opts":Landroid/view/WindowOptions;
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowOptions;->mAnimationType:I

    .line 145
    iput-object p2, v0, Landroid/view/WindowOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 146
    iput-object p1, v0, Landroid/view/WindowOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 147
    iput-boolean v1, v0, Landroid/view/WindowOptions;->mIsReturning:Z

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 150
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v1, :cond_18

    .line 151
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowOptions;->mExitCoordinatorIndex:I

    goto :goto_20

    .line 153
    :cond_18
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mWindowTransitionState:Landroid/view/WindowTransitionState;

    invoke-virtual {v2, p1}, Landroid/view/WindowTransitionState;->addExitTransitionCoordinator(Landroid/view/WindowExitTransitionCoordinator;)I

    move-result v2

    iput v2, v0, Landroid/view/WindowOptions;->mExitCoordinatorIndex:I

    .line 155
    :goto_20
    return-object v0
.end method

.method public static varargs blacklist makeSceneTransitionAnimation(Landroid/view/View;[Landroid/util/Pair;)Landroid/view/WindowOptions;
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "[",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/WindowOptions;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 94
    .local p1, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    new-instance v0, Landroid/view/WindowOptions;

    invoke-direct {v0}, Landroid/view/WindowOptions;-><init>()V

    .line 95
    .local v0, "opts":Landroid/view/WindowOptions;
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 96
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    new-instance v2, Landroid/view/WindowExitTransitionCoordinator$WindowExitTransitionCallbacks;

    invoke-direct {v2, v1}, Landroid/view/WindowExitTransitionCoordinator$WindowExitTransitionCallbacks;-><init>(Landroid/view/ViewRootImpl;)V

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mExitTransitionListener:Landroid/view/WindowSharedElementCallback;

    invoke-static {v2, v3, p0, v0, p1}, Landroid/view/WindowOptions;->makeSceneTransitionAnimation(Landroid/view/WindowExitTransitionCoordinator$WindowExitTransitionCallbacks;Landroid/view/WindowSharedElementCallback;Landroid/view/View;Landroid/view/WindowOptions;[Landroid/util/Pair;)Landroid/view/WindowExitTransitionCoordinator;

    move-result-object v2

    .line 99
    .local v2, "exit":Landroid/view/WindowExitTransitionCoordinator;
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindowTransitionState:Landroid/view/WindowTransitionState;

    invoke-virtual {v3, v2}, Landroid/view/WindowTransitionState;->addExitTransitionCoordinator(Landroid/view/WindowExitTransitionCoordinator;)I

    move-result v3

    iput v3, v0, Landroid/view/WindowOptions;->mExitCoordinatorIndex:I

    .line 100
    return-object v0
.end method


# virtual methods
.method public blacklist getAnimationType()I
    .registers 2

    .line 165
    iget v0, p0, Landroid/view/WindowOptions;->mAnimationType:I

    return v0
.end method

.method public blacklist getExitCoordinatorKey()I
    .registers 2

    .line 160
    iget v0, p0, Landroid/view/WindowOptions;->mExitCoordinatorIndex:I

    return v0
.end method

.method public blacklist getResultReceiver()Landroid/os/ResultReceiver;
    .registers 2

    .line 175
    iget-object v0, p0, Landroid/view/WindowOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public blacklist getSharedElementNames()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Landroid/view/WindowOptions;->mSharedElementNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist isReturning()Z
    .registers 2

    .line 180
    iget-boolean v0, p0, Landroid/view/WindowOptions;->mIsReturning:Z

    return v0
.end method

.method public blacklist toBundle()Landroid/os/Bundle;
    .registers 4

    .line 187
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 188
    .local v0, "b":Landroid/os/Bundle;
    iget v1, p0, Landroid/view/WindowOptions;->mAnimationType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    .line 189
    const-string v2, "android:window.animType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    :cond_f
    iget v1, p0, Landroid/view/WindowOptions;->mAnimationType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_32

    .line 192
    iget-object v1, p0, Landroid/view/WindowOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_1d

    .line 193
    const-string v2, "android:window.transitionCompleteListener"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 195
    :cond_1d
    iget-object v1, p0, Landroid/view/WindowOptions;->mSharedElementNames:Ljava/util/ArrayList;

    const-string v2, "android:window.sharedElementNames"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 196
    iget v1, p0, Landroid/view/WindowOptions;->mExitCoordinatorIndex:I

    const-string v2, "android:window.exitCoordinatorIndex"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    iget-boolean v1, p0, Landroid/view/WindowOptions;->mIsReturning:Z

    const-string v2, "android:window.transitionIsReturning"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 199
    :cond_32
    return-object v0
.end method
