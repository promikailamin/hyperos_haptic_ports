.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/display/DisplayManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/display/DisplayManagerService;

    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService;->lambda$resetBrightnessConfigurations$7$com-android-server-display-DisplayManagerService(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method
