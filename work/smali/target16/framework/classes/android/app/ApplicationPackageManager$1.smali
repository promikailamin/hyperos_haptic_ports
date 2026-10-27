.class Landroid/app/ApplicationPackageManager$1;
.super Landroid/app/PropertyInvalidatedCache;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V
    .registers 4

    .line 816
    invoke-direct {p0, p1, p2, p3}, Landroid/app/PropertyInvalidatedCache;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    return-void
.end method


# virtual methods
.method public blacklist recompute(Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;)Ljava/lang/Boolean;
    .registers 4

    .line 821
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {p1}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;->-$$Nest$fgetname(Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;->-$$Nest$fgetversion(Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;)I

    move-result p1

    .line 822
    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p1

    .line 821
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    return-object p1

    .line 823
    :catch_18
    move-exception p1

    .line 824
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 816
    check-cast p1, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;

    invoke-virtual {p0, p1}, Landroid/app/ApplicationPackageManager$1;->recompute(Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
