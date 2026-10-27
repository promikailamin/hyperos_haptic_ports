.class public final synthetic Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;ILandroid/util/ArraySet;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    iput p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda3;->f$2:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    iget v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda3;->f$1:I

    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda3;->f$2:Landroid/util/ArraySet;

    invoke-static {v0, v1, p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->$r8$lambda$fRGAzympNH5HtNL1frgFI8bS8J8(Lcom/android/server/companion/virtual/GenericWindowPolicyController;ILandroid/util/ArraySet;)V

    return-void
.end method
