.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioServerPermissionProvider;

.field public final synthetic f$1:Lcom/android/server/audio/AudioPolicyFacade;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioServerPermissionProvider;Lcom/android/server/audio/AudioPolicyFacade;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda34;->f$0:Lcom/android/server/audio/AudioServerPermissionProvider;

    iput-object p2, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda34;->f$1:Lcom/android/server/audio/AudioPolicyFacade;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda34;->f$0:Lcom/android/server/audio/AudioServerPermissionProvider;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda34;->f$1:Lcom/android/server/audio/AudioPolicyFacade;

    invoke-static {v0, p0}, Lcom/android/server/audio/AudioService;->$r8$lambda$RujVPP3NKIgznjyG6c4M3SYFNas(Lcom/android/server/audio/AudioServerPermissionProvider;Lcom/android/server/audio/AudioPolicyFacade;)V

    return-void
.end method
