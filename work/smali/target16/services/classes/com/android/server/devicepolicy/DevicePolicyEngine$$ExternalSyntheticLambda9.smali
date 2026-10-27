.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/devicepolicy/EnforcingAdmin;

.field public final synthetic f$3:Lcom/android/server/devicepolicy/PolicyDefinition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;ZLcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    iput-boolean p2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda9;->f$1:Z

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda9;->f$2:Lcom/android/server/devicepolicy/EnforcingAdmin;

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda9;->f$3:Lcom/android/server/devicepolicy/PolicyDefinition;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda9;->f$1:Z

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda9;->f$2:Lcom/android/server/devicepolicy/EnforcingAdmin;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda9;->f$3:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object v4, p1

    check-cast v4, Ljava/lang/Integer;

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-static/range {v0 .. v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->$r8$lambda$9AdS770YNToSdSY0zAC_wb-pJfQ(Lcom/android/server/devicepolicy/DevicePolicyEngine;ZLcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;Ljava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
