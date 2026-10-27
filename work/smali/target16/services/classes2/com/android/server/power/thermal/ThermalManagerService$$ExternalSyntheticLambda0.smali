.class public final synthetic Lcom/android/server/power/thermal/ThermalManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/thermal/ThermalManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/thermal/ThermalManagerService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/thermal/ThermalManagerService;

    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/power/thermal/ThermalManagerService;->$r8$lambda$nuXN7icTAdEG8PdEzZpnjfkj3QU(Lcom/android/server/power/thermal/ThermalManagerService;ILjava/util/List;)I

    move-result p0

    return p0
.end method
