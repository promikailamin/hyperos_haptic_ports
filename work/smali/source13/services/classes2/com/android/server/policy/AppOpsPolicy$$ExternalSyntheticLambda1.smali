.class public final synthetic Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/AppOpsPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/AppOpsPolicy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/policy/AppOpsPolicy;

    return-void
.end method


# virtual methods
.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/policy/AppOpsPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/AppOpsPolicy;->lambda$new$1$com-android-server-policy-AppOpsPolicy(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method
