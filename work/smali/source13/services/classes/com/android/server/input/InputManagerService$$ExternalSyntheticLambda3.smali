.class public final synthetic Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda3;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda3;->f$0:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->lambda$getKeyboardLayouts$3(Ljava/util/ArrayList;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V

    return-void
.end method
