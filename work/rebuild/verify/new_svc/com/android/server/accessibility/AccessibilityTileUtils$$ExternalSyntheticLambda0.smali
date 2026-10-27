.class public final synthetic Lcom/android/server/accessibility/AccessibilityTileUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/content/pm/PackageManagerInternal;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;ILjava/util/Set;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityTileUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityTileUtils$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/PackageManagerInternal;

    iput p3, p0, Lcom/android/server/accessibility/AccessibilityTileUtils$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityTileUtils$$ExternalSyntheticLambda0;->f$3:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityTileUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityTileUtils$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/PackageManagerInternal;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityTileUtils$$ExternalSyntheticLambda0;->f$2:I

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityTileUtils$$ExternalSyntheticLambda0;->f$3:Ljava/util/Set;

    check-cast p1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/accessibility/AccessibilityTileUtils;->$r8$lambda$Oos7u-JbDCrRVuSrqmT1kE0YGRw(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;ILjava/util/Set;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    return-void
.end method
