.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;
.super Ljava/lang/Record;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {}
    }
    componentNames = {
        "targetUserId",
        "admin",
        "policy"
    }
    componentSignatures = {
        null,
        null,
        .subannotation Ldalvik/annotation/Signature;
            value = {
                "Landroid/app/admin/PolicyValue<",
                "Ljava/lang/Integer;",
                ">;"
            }
        .end subannotation
    }
    componentTypes = {
        I,
        Lcom/android/server/devicepolicy/EnforcingAdmin;,
        Landroid/app/admin/PolicyValue;
    }
.end annotation


# instance fields
.field public final admin:Lcom/android/server/devicepolicy/EnforcingAdmin;

.field public final policy:Landroid/app/admin/PolicyValue;

.field public final targetUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetadmin(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;)Lcom/android/server/devicepolicy/EnforcingAdmin;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;->admin:Lcom/android/server/devicepolicy/EnforcingAdmin;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetpolicy(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;)Landroid/app/admin/PolicyValue;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;->policy:Landroid/app/admin/PolicyValue;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgettargetUserId(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;->targetUserId:I

    return p0
.end method

.method public constructor <init>(ILcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;)V
    .registers 4

    .line 12375
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;->targetUserId:I

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;->admin:Lcom/android/server/devicepolicy/EnforcingAdmin;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;->policy:Landroid/app/admin/PolicyValue;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/DevicePolicyManagerService-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;-><init>(ILcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;)V

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;

    if-eqz v0, :cond_22

    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;

    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;->targetUserId:I

    iget v1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;->targetUserId:I

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;->admin:Lcom/android/server/devicepolicy/EnforcingAdmin;

    iget-object v1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;->admin:Lcom/android/server/devicepolicy/EnforcingAdmin;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;->policy:Landroid/app/admin/PolicyValue;

    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;->policy:Landroid/app/admin/PolicyValue;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 5

    .line 0
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;->targetUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;->admin:Lcom/android/server/devicepolicy/EnforcingAdmin;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;->policy:Landroid/app/admin/PolicyValue;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p0, v2, v0

    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 12375
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 3

    .line 12375
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;->targetUserId:I

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;->admin:Lcom/android/server/devicepolicy/EnforcingAdmin;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;->policy:Landroid/app/admin/PolicyValue;

    invoke-static {v0, v1, p0}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey$$ExternalSyntheticRecord0;->m(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 12375
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LockscreenPolicy;

    const-string/jumbo v1, "targetUserId;admin;policy"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
