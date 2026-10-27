.class public final synthetic Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/virtual/ViewConfigurationController;

.field public final synthetic f$1:Landroid/content/om/OverlayManagerTransaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/ViewConfigurationController;Landroid/content/om/OverlayManagerTransaction;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/virtual/ViewConfigurationController;

    iput-object p2, p0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda0;->f$1:Landroid/content/om/OverlayManagerTransaction;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/virtual/ViewConfigurationController;

    iget-object p0, p0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda0;->f$1:Landroid/content/om/OverlayManagerTransaction;

    invoke-static {v0, p0}, Lcom/android/server/companion/virtual/ViewConfigurationController;->$r8$lambda$dw8F40DF9eNJtk5xh5NXfYAkOe0(Lcom/android/server/companion/virtual/ViewConfigurationController;Landroid/content/om/OverlayManagerTransaction;)V

    return-void
.end method
