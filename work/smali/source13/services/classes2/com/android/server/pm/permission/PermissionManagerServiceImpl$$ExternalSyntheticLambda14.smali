.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    return-void
.end method


# virtual methods
.method public final onInitialized(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$onSystemReady$12$com-android-server-pm-permission-PermissionManagerServiceImpl(I)V

    return-void
.end method
