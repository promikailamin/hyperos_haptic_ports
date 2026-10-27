.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;ILjava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService$$ExternalSyntheticLambda3;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService$$ExternalSyntheticLambda3;->f$1:I

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService$$ExternalSyntheticLambda3;->f$2:Ljava/util/List;

    invoke-static {v0, v1, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->$r8$lambda$VEKFP5lkZcphrr-za220NYI2hQM(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;ILjava/util/List;)V

    return-void
.end method
