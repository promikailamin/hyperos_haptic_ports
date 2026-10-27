.class public final synthetic Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/parsing/pkg/AndroidPackage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    check-cast p1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    invoke-static {v0, p1}, Lcom/android/server/pm/InstantAppRegistry;->lambda$onPackageInstalled$0(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z

    move-result p1

    return p1
.end method
