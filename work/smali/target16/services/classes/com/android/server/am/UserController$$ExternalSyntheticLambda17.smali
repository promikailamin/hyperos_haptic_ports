.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/UserController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/am/UserController;

    iput p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/am/UserController;

    iget p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;->f$1:I

    invoke-static {v0, p0}, Lcom/android/server/am/UserController;->$r8$lambda$AfEv9X5g5a3YdFCIm-ffHLQn-ts(Lcom/android/server/am/UserController;I)V

    return-void
.end method
