.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/pm/overlay/OverlayPaths;

.field public final synthetic f$3:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILandroid/content/pm/overlay/OverlayPaths;Landroid/util/ArrayMap;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda24;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda24;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda24;->f$2:Landroid/content/pm/overlay/OverlayPaths;

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda24;->f$3:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda24;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda24;->f$1:I

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda24;->f$2:Landroid/content/pm/overlay/OverlayPaths;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda24;->f$3:Landroid/util/ArrayMap;

    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$setEnabledOverlayPackages$54(Ljava/lang/String;ILandroid/content/pm/overlay/OverlayPaths;Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V

    return-void
.end method
