.class public final synthetic Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/VcnManagementService;

.field public final synthetic f$1:Landroid/net/NetworkCapabilities;

.field public final synthetic f$2:Landroid/net/LinkProperties;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/VcnManagementService;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/VcnManagementService;

    iput-object p2, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda4;->f$1:Landroid/net/NetworkCapabilities;

    iput-object p3, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda4;->f$2:Landroid/net/LinkProperties;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/VcnManagementService;

    iget-object v1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda4;->f$1:Landroid/net/NetworkCapabilities;

    iget-object v2, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda4;->f$2:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/VcnManagementService;->lambda$getUnderlyingNetworkPolicy$8$com-android-server-VcnManagementService(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    move-result-object v0

    return-object v0
.end method
