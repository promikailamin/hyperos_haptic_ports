.class public final synthetic Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .registers 2

    .line 0
    check-cast p1, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;

    invoke-static {p1}, Lcom/android/server/pm/InstantAppRegistry;->$r8$lambda$oXH1b2WOXHdE9iL_qlu4NoKN34c(Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;)J

    move-result-wide p0

    return-wide p0
.end method
