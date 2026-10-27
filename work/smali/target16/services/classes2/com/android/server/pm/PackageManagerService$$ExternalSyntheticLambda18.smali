.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/pm/PackageManagerServiceInjector$Producer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final produce(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerService;->$r8$lambda$sc1WLFT2RuY2JzYA-Xh7kZb2XeY(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    move-result-object p0

    return-object p0
.end method
