.class public final synthetic Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayPolicy;IZI)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iput p2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;->f$2:Z

    iput p4, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;->f$2:Z

    iget p0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;->f$3:I

    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/wm/DisplayPolicy;->$r8$lambda$OWLe1L-hDkzuNlvzr3kczhn_1n8(Lcom/android/server/wm/DisplayPolicy;IZILcom/android/server/statusbar/StatusBarManagerInternal;)V

    return-void
.end method
