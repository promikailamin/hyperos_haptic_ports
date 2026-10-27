.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/display/DisplayManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/display/DisplayManagerService;

    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->$r8$lambda$wEilnHKnr9GZ1ipXq8emzmYq3Bw(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method
