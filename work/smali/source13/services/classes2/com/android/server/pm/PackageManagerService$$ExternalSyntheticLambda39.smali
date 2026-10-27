.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda39;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/pm/PackageManagerServiceInjector$Producer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda39;->f$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    return-void
.end method


# virtual methods
.method public final produce(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda39;->f$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$main$32(Lcom/android/server/pm/verify/domain/DomainVerificationService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-result-object p1

    return-object p1
.end method
