.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;ZII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/display/DisplayManagerService;

    iput-boolean p2, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda4;->f$1:Z

    iput p3, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda4;->f$2:I

    iput p4, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda4;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/display/DisplayManagerService;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda4;->f$1:Z

    iget v2, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda4;->f$2:I

    iget v3, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda4;->f$3:I

    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/display/DisplayManagerService;->lambda$onUserSwitching$0$com-android-server-display-DisplayManagerService(ZIILcom/android/server/display/LogicalDisplay;)V

    return-void
.end method
