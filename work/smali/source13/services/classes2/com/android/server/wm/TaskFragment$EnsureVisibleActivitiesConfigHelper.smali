.class Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;
.super Ljava/lang/Object;
.source "TaskFragment.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnsureVisibleActivitiesConfigHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/server/wm/ActivityRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private mBehindFullscreen:Z

.field private mPreserveWindow:Z

.field private mUpdateConfig:Z

.field final synthetic this$0:Lcom/android/server/wm/TaskFragment;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/TaskFragment;)V
    .registers 2

    .line 352
    iput-object p1, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->this$0:Lcom/android/server/wm/TaskFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;-><init>(Lcom/android/server/wm/TaskFragment;)V

    return-void
.end method


# virtual methods
.method process(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 5
    .param p1, "start"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "preserveWindow"    # Z

    .line 364
    if-eqz p1, :cond_1c

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_7

    goto :goto_1c

    .line 367
    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->reset(Z)V

    .line 368
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->this$0:Lcom/android/server/wm/TaskFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1, v1}, Lcom/android/server/wm/TaskFragment;->forAllActivities(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Z

    .line 371
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->mUpdateConfig:Z

    if-eqz v0, :cond_1b

    .line 374
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->this$0:Lcom/android/server/wm/TaskFragment;

    iget-object v0, v0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 376
    :cond_1b
    return-void

    .line 365
    :cond_1c
    :goto_1c
    return-void
.end method

.method reset(Z)V
    .registers 3
    .param p1, "preserveWindow"    # Z

    .line 358
    iput-boolean p1, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->mPreserveWindow:Z

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->mUpdateConfig:Z

    .line 360
    iput-boolean v0, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->mBehindFullscreen:Z

    .line 361
    return-void
.end method

.method public test(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 380
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->mUpdateConfig:Z

    iget-boolean v1, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->mPreserveWindow:Z

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->mUpdateConfig:Z

    .line 381
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->mBehindFullscreen:Z

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->mBehindFullscreen:Z

    .line 382
    return v0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .registers 2

    .line 352
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->test(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    return p1
.end method
