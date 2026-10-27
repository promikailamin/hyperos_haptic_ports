.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RootWindowContainer;

.field public final synthetic f$1:Lcom/android/server/wm/Transition;

.field public final synthetic f$2:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/Transition;Lcom/android/server/wm/DisplayContent;I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/wm/RootWindowContainer;

    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda25;->f$1:Lcom/android/server/wm/Transition;

    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda25;->f$2:Lcom/android/server/wm/DisplayContent;

    iput p4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda25;->f$3:I

    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda25;->f$1:Lcom/android/server/wm/Transition;

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda25;->f$2:Lcom/android/server/wm/DisplayContent;

    iget p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda25;->f$3:I

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/wm/RootWindowContainer;->$r8$lambda$1pha2RT22ZlceH6WytQ0FtHD6BQ(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/Transition;Lcom/android/server/wm/DisplayContent;IZ)V

    return-void
.end method
