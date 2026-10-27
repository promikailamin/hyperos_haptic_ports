.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;

    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;

    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;->lambda$getAdminInfoSupplier$0$com-android-server-devicepolicy-DevicePolicyManagerService$DpmsUpgradeDataProvider(ILandroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object p1

    return-object p1
.end method
