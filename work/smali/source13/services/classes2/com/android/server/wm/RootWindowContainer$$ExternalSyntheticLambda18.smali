.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PermissionPolicyInternal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PermissionPolicyInternal;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/policy/PermissionPolicyInternal;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/policy/PermissionPolicyInternal;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$getTaskToShowPermissionDialogOn$37(Lcom/android/server/policy/PermissionPolicyInternal;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    return p1
.end method
