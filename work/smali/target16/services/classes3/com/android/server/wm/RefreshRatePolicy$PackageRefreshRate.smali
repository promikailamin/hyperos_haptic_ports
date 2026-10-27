.class public Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;
.super Ljava/lang/Object;
.source "RefreshRatePolicy.java"


# instance fields
.field public final mPackages:Ljava/util/HashMap;

.field public final synthetic this$0:Lcom/android/server/wm/RefreshRatePolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RefreshRatePolicy;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->this$0:Lcom/android/server/wm/RefreshRatePolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->mPackages:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;FF)V
    .registers 5

    .line 42
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->this$0:Lcom/android/server/wm/RefreshRatePolicy;

    invoke-static {v0}, Lcom/android/server/wm/RefreshRatePolicy;->-$$Nest$fgetmMinSupportedRefreshRate(Lcom/android/server/wm/RefreshRatePolicy;)F

    move-result v0

    .line 43
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 44
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->this$0:Lcom/android/server/wm/RefreshRatePolicy;

    invoke-static {v0}, Lcom/android/server/wm/RefreshRatePolicy;->-$$Nest$fgetmMaxSupportedRefreshRate(Lcom/android/server/wm/RefreshRatePolicy;)F

    move-result v0

    .line 45
    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 47
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->mPackages:Ljava/util/HashMap;

    new-instance v0, Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-direct {v0, p2, p3}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/view/SurfaceControl$RefreshRateRange;
    .registers 2

    .line 52
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->mPackages:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$RefreshRateRange;

    return-object p0
.end method

.method public remove(Ljava/lang/String;)V
    .registers 2

    .line 56
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->mPackages:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
