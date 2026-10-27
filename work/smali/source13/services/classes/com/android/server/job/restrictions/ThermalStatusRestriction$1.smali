.class Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;
.super Ljava/lang/Object;
.source "ThermalStatusRestriction.java"

# interfaces
.implements Landroid/os/PowerManager$OnThermalStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/job/restrictions/ThermalStatusRestriction;->onSystemServicesReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;


# direct methods
.method constructor <init>(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    .line 53
    iput-object p1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThermalStatusChanged(I)V
    .registers 5
    .param p1, "status"    # I

    .line 65
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-lt p1, v1, :cond_6

    if-le p1, v0, :cond_1c

    :cond_6
    iget-object v2, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    invoke-static {v2}, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->-$$Nest$fgetmThermalStatus(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)I

    move-result v2

    if-lt v2, v1, :cond_10

    if-lt p1, v1, :cond_1c

    :cond_10
    iget-object v2, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    invoke-static {v2}, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->-$$Nest$fgetmThermalStatus(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)I

    move-result v2

    if-ge v2, v0, :cond_1b

    if-le p1, v0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :cond_1c
    :goto_1c
    move v0, v1

    .line 76
    .local v0, "significantChange":Z
    iget-object v1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    invoke-static {v1, p1}, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->-$$Nest$fputmThermalStatus(Lcom/android/server/job/restrictions/ThermalStatusRestriction;I)V

    .line 77
    if-eqz v0, :cond_2c

    .line 78
    iget-object v1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    iget-object v1, v1, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 80
    :cond_2c
    return-void
.end method
