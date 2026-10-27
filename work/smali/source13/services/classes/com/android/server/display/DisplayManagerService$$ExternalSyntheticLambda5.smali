.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService;

.field public final synthetic f$1:Landroid/view/Display$Mode;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Landroid/view/Display$Mode;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/display/DisplayManagerService;

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;->f$1:Landroid/view/Display$Mode;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;->f$1:Landroid/view/Display$Mode;

    check-cast p1, Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/display/DisplayManagerService;->lambda$storeModeInGlobalSettingsLocked$4$com-android-server-display-DisplayManagerService(Landroid/view/Display$Mode;Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method
