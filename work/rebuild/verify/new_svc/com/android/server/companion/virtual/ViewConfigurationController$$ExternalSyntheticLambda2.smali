.class public final synthetic Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/virtual/ViewConfigurationController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/content/ContentResolver;

.field public final synthetic f$3:I

.field public final synthetic f$4:Z

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/ViewConfigurationController;ZLandroid/content/ContentResolver;IZI)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/virtual/ViewConfigurationController;

    iput-boolean p2, p0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda2;->f$1:Z

    iput-object p3, p0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda2;->f$2:Landroid/content/ContentResolver;

    iput p4, p0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda2;->f$3:I

    iput-boolean p5, p0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda2;->f$4:Z

    iput p6, p0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda2;->f$5:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/virtual/ViewConfigurationController;

    iget-boolean v1, p0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda2;->f$1:Z

    iget-object v2, p0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda2;->f$2:Landroid/content/ContentResolver;

    iget v3, p0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda2;->f$3:I

    iget-boolean v4, p0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda2;->f$4:Z

    iget v5, p0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda2;->f$5:I

    invoke-static/range {v0 .. v5}, Lcom/android/server/companion/virtual/ViewConfigurationController;->$r8$lambda$z6WvJezQQAbVFwxSSrcQWyg8Pjo(Lcom/android/server/companion/virtual/ViewConfigurationController;ZLandroid/content/ContentResolver;IZI)V

    return-void
.end method
