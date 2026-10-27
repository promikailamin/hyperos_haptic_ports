.class public final synthetic Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/companion/CompanionDeviceService$Stub;

.field public final synthetic blacklist f$1:Landroid/companion/AssociationInfo;

.field public final synthetic blacklist f$2:Landroid/companion/ActionRequest;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/companion/CompanionDeviceService$Stub;Landroid/companion/AssociationInfo;Landroid/companion/ActionRequest;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda3;->f$0:Landroid/companion/CompanionDeviceService$Stub;

    iput-object p2, p0, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda3;->f$1:Landroid/companion/AssociationInfo;

    iput-object p3, p0, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda3;->f$2:Landroid/companion/ActionRequest;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda3;->f$0:Landroid/companion/CompanionDeviceService$Stub;

    iget-object v1, p0, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda3;->f$1:Landroid/companion/AssociationInfo;

    iget-object v2, p0, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda3;->f$2:Landroid/companion/ActionRequest;

    invoke-static {v0, v1, v2}, Landroid/companion/CompanionDeviceService$Stub;->$r8$lambda$N5I0CPH_9FJCzsOirPWNKVL7u4U(Landroid/companion/CompanionDeviceService$Stub;Landroid/companion/AssociationInfo;Landroid/companion/ActionRequest;)V

    return-void
.end method
