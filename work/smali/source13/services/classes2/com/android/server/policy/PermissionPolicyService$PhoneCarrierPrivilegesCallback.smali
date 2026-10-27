.class final Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;
.super Ljava/lang/Object;
.source "PermissionPolicyService.java"

# interfaces
.implements Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PermissionPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhoneCarrierPrivilegesCallback"
.end annotation


# instance fields
.field private mPhoneId:I

.field final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PermissionPolicyService;I)V
    .registers 3
    .param p2, "phoneId"    # I

    .line 513
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput p2, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->mPhoneId:I

    .line 515
    return-void
.end method


# virtual methods
.method public onCarrierPrivilegesChanged(Ljava/util/Set;Ljava/util/Set;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 520
    .local p1, "privilegedPackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "privilegedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$minitTelephonyManagerIfNeeded(Lcom/android/server/policy/PermissionPolicyService;)V

    .line 521
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmTelephonyManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_17

    .line 522
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot grant default permissions to Carrier Service app. TelephonyManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return-void

    .line 527
    :cond_17
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmTelephonyManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->mPhoneId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCarrierServicePackageNameForLogicalSlot(I)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "servicePkg":Ljava/lang/String;
    if-nez v0, :cond_26

    .line 530
    return-void

    .line 532
    :cond_26
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    .line 533
    .local v1, "users":[I
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmContext(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/permission/LegacyPermissionManager;

    .line 534
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/permission/LegacyPermissionManager;

    .line 535
    .local v2, "legacyPermManager":Landroid/permission/LegacyPermissionManager;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_41
    array-length v4, v1

    if-ge v3, v4, :cond_5a

    .line 537
    :try_start_44
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v4}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmPackageManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    aget v6, v1, v3

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 538
    aget v4, v1, v3

    invoke-virtual {v2, v0, v4}, Landroid/permission/LegacyPermissionManager;->grantDefaultPermissionsToCarrierServiceApp(Ljava/lang/String;I)V
    :try_end_55
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_44 .. :try_end_55} :catch_56

    .line 542
    goto :goto_57

    .line 540
    :catch_56
    move-exception v4

    .line 535
    :goto_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 544
    .end local v3    # "i":I
    :cond_5a
    return-void
.end method
