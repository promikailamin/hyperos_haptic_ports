.class public final synthetic Lcom/android/server/wm/PresentationController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:[Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(I[Lcom/android/server/wm/Task;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/PresentationController$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lcom/android/server/wm/PresentationController$$ExternalSyntheticLambda1;->f$1:[Lcom/android/server/wm/Task;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget v0, p0, Lcom/android/server/wm/PresentationController$$ExternalSyntheticLambda1;->f$0:I

    iget-object p0, p0, Lcom/android/server/wm/PresentationController$$ExternalSyntheticLambda1;->f$1:[Lcom/android/server/wm/Task;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/PresentationController;->$r8$lambda$rK6q9PpOa2PNp4aGoHIkmH9Czho(I[Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method
