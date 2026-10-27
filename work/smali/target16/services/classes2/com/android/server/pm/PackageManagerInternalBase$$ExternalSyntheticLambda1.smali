.class public final synthetic Lcom/android/server/pm/PackageManagerInternalBase$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Landroid/content/pm/UserPackage;

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerInternalBase;->$r8$lambda$4PlUE9V_1Q6ossbrw0v7dzPBhLE(Landroid/content/pm/UserPackage;)Z

    move-result p0

    return p0
.end method
