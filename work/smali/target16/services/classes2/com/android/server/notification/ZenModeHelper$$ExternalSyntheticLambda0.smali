.class public final synthetic Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(ZZZZZZ)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;->f$0:Z

    iput-boolean p2, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;->f$1:Z

    iput-boolean p3, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;->f$2:Z

    iput-boolean p4, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;->f$3:Z

    iput-boolean p5, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;->f$4:Z

    iput-boolean p6, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;->f$5:Z

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .registers 9

    .line 0
    iget-boolean v0, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;->f$0:Z

    iget-boolean v1, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;->f$1:Z

    iget-boolean v2, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;->f$2:Z

    iget-boolean v3, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;->f$3:Z

    iget-boolean v4, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;->f$4:Z

    iget-boolean v5, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;->f$5:Z

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/notification/ZenModeHelper;->$r8$lambda$Y6UWStRzjZ6nvNm1-qNw0sA5E6c(ZZZZZZI)Z

    move-result p0

    return p0
.end method
