.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;ZZ)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    iput-boolean p2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda13;->f$1:Z

    iput-boolean p3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda13;->f$2:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda13;->f$1:Z

    iget-boolean p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda13;->f$2:Z

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->$r8$lambda$yxQcJdLPXTWsCmrZkQbadngvR9I(Lcom/android/server/devicepolicy/DevicePolicyEngine;ZZLjava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
