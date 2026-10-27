.class public final synthetic Lcom/android/server/power/thermal/ThermalManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;

.field public final synthetic f$1:Landroid/os/IThermalHeadroomListener;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;Landroid/os/IThermalHeadroomListener;II)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;

    iput-object p2, p0, Lcom/android/server/power/thermal/ThermalManagerService$$ExternalSyntheticLambda3;->f$1:Landroid/os/IThermalHeadroomListener;

    iput p3, p0, Lcom/android/server/power/thermal/ThermalManagerService$$ExternalSyntheticLambda3;->f$2:I

    iput p4, p0, Lcom/android/server/power/thermal/ThermalManagerService$$ExternalSyntheticLambda3;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;

    iget-object v1, p0, Lcom/android/server/power/thermal/ThermalManagerService$$ExternalSyntheticLambda3;->f$1:Landroid/os/IThermalHeadroomListener;

    iget v2, p0, Lcom/android/server/power/thermal/ThermalManagerService$$ExternalSyntheticLambda3;->f$2:I

    iget p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$$ExternalSyntheticLambda3;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/power/thermal/ThermalManagerService;->$r8$lambda$WEfbITOLEWmTgpYLSgOpOfLE5rs(Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;Landroid/os/IThermalHeadroomListener;II)V

    return-void
.end method
