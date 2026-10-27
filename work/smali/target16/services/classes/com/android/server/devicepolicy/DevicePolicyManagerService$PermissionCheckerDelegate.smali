.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerService$PermissionCheckerDelegate;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Lcom/android/server/devicepolicy/PermissionChecker$Delegate;


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .registers 2

    .line 23719
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$PermissionCheckerDelegate;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDpcType(Lcom/android/server/devicepolicy/CallerIdentity;)I
    .registers 2

    .line 23724
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$PermissionCheckerDelegate;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mgetDpcType(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/CallerIdentity;)I

    move-result p0

    return p0
.end method

.method public getUserDpcType(I)I
    .registers 2

    .line 23729
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$PermissionCheckerDelegate;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mgetDpcType(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)I

    move-result p0

    return p0
.end method

.method public hasAdminPolicy(ILcom/android/server/devicepolicy/CallerIdentity;)Z
    .registers 3

    .line 23745
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$PermissionCheckerDelegate;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhasAdminPolicy(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result p0

    return p0
.end method

.method public isCallerDelegate(Lcom/android/server/devicepolicy/CallerIdentity;Ljava/lang/String;)Z
    .registers 3

    .line 23740
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$PermissionCheckerDelegate;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misCallerDelegate(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/CallerIdentity;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isCallerDevicePolicyManagementRoleHolder(Lcom/android/server/devicepolicy/CallerIdentity;)Z
    .registers 2

    .line 23734
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$PermissionCheckerDelegate;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misCallerDevicePolicyManagementRoleHolder(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result p0

    return p0
.end method
