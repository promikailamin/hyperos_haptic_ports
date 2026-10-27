.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda43;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/pm/PackageManagerServiceInjector$Producer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final produce(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$main$34(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/BackgroundDexOptService;

    move-result-object p1

    return-object p1
.end method
