.class public final synthetic Lcom/android/server/BatteryService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/health/HealthInfoCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/BatteryService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/BatteryService;

    return-void
.end method


# virtual methods
.method public final update(Landroid/hardware/health/HealthInfo;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/BatteryService;

    invoke-static {v0, p1}, Lcom/android/server/BatteryService;->$r8$lambda$nMM-N14QCYtvYu3I-B9f4UtoxL0(Lcom/android/server/BatteryService;Landroid/hardware/health/HealthInfo;)V

    return-void
.end method
