.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public final compute(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/wm/DisplayContent;

    check-cast p1, Landroid/view/RoundedCorners;

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/DisplayContent;->$r8$lambda$Zo2ftLMujZma5SLI7YLzy3fA25o(Lcom/android/server/wm/DisplayContent;Landroid/view/RoundedCorners;I)Landroid/view/RoundedCorners;

    move-result-object p1

    return-object p1
.end method
