.class public final synthetic Lcom/android/server/audio/AudioService$8$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioServerPermissionProvider;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/pm/PackageManagerInternal;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioServerPermissionProvider;ILandroid/content/pm/PackageManagerInternal;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$8$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioServerPermissionProvider;

    iput p2, p0, Lcom/android/server/audio/AudioService$8$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/audio/AudioService$8$$ExternalSyntheticLambda0;->f$2:Landroid/content/pm/PackageManagerInternal;

    iput-object p4, p0, Lcom/android/server/audio/AudioService$8$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$8$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioServerPermissionProvider;

    iget v1, p0, Lcom/android/server/audio/AudioService$8$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/server/audio/AudioService$8$$ExternalSyntheticLambda0;->f$2:Landroid/content/pm/PackageManagerInternal;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$8$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/audio/AudioService$8;->$r8$lambda$EM4JTpH4aKAL4DS-JUiYIGKVBnA(Lcom/android/server/audio/AudioServerPermissionProvider;ILandroid/content/pm/PackageManagerInternal;Ljava/lang/String;)V

    return-void
.end method
