.class public Lcom/android/server/policy/PermissionPolicyService$2;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "PermissionPolicyService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PermissionPolicyService;)V
    .registers 2

    .line 235
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$2;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 237
    const-string p1, "default:0"

    invoke-static {p4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    if-gez p2, :cond_b

    goto :goto_15

    .line 241
    :cond_b
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$2;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$msynchronizeUidPermissionsAndAppOpsAsync(Lcom/android/server/policy/PermissionPolicyService;I)V

    .line 242
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$2;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {p0, p2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$mresetAppOpPermissionsIfNotRequestedForUidAsync(Lcom/android/server/policy/PermissionPolicyService;I)V

    :cond_15
    :goto_15
    return-void
.end method
