.class public final synthetic Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/ExternalDisplayPolicy;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/ExternalDisplayPolicy;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/ExternalDisplayPolicy;

    iput-boolean p2, p0, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/ExternalDisplayPolicy;

    iget-boolean p0, p0, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;->f$1:Z

    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    invoke-static {v0, p0, p1}, Lcom/android/server/display/ExternalDisplayPolicy;->$r8$lambda$8D4Cfxol3DTYviRaOyNiNNJagtE(Lcom/android/server/display/ExternalDisplayPolicy;ZLcom/android/server/display/LogicalDisplay;)V

    return-void
.end method
