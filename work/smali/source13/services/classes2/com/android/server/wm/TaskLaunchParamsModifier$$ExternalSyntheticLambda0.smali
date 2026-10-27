.class public final synthetic Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskLaunchParamsModifier;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskLaunchParamsModifier;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TaskLaunchParamsModifier;

    iput p2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TaskLaunchParamsModifier;

    iget v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda0;->f$2:I

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->lambda$calculate$0$com-android-server-wm-TaskLaunchParamsModifier(IILcom/android/server/wm/TaskDisplayArea;)Z

    move-result p1

    return p1
.end method
