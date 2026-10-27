.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/pm/ApkChecksums$Injector$Producer;


# instance fields
.field public final synthetic f$0:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda5;->f$0:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final produce()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda5;->f$0:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->lambda$requestChecksumsInternal$5(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method
