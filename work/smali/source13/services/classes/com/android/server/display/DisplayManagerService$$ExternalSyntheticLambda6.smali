.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService;

.field public final synthetic f$1:Lcom/android/server/display/LogicalDisplay;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/display/DisplayManagerService;

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda6;->f$1:Lcom/android/server/display/LogicalDisplay;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda6;->f$1:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService;->lambda$addDisplayPowerControllerLocked$9$com-android-server-display-DisplayManagerService(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method
