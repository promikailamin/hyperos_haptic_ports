.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppTimeTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppTimeTracker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/am/AppTimeTracker;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/am/AppTimeTracker;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->$r8$lambda$FY2Gm3ji_PIAPXLeXdV82nbLrZ0(Lcom/android/server/am/AppTimeTracker;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
