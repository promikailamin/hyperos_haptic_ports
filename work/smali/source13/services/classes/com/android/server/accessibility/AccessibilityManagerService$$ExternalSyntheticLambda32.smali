.class public final synthetic Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda32;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda32;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda32;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda32;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$persistMagnificationModeSettingsLocked$25$com-android-server-accessibility-AccessibilityManagerService(I)V

    return-void
.end method
