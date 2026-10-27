.class public Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppResolver;
.super Lcom/miui/hybrid/hook/IntentResolver;
.source "FilterInfoInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/hybrid/hook/FilterInfoInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuickAppResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/hybrid/hook/IntentResolver<",
        "Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;",
        "Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Lcom/miui/hybrid/hook/IntentResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic blacklist isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .registers 3

    .line 81
    check-cast p2, Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;

    invoke-virtual {p0, p1, p2}, Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppResolver;->isPackageForFilter(Ljava/lang/String;Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;)Z

    move-result p1

    return p1
.end method

.method protected blacklist isPackageForFilter(Ljava/lang/String;Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;

    .line 85
    invoke-virtual {p2}, Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;->getAppInfo()Lcom/android/internal/app/QuickAppResolveInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/QuickAppResolveInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic blacklist newArray(I)[Landroid/content/IntentFilter;
    .registers 2

    .line 81
    invoke-virtual {p0, p1}, Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppResolver;->newArray(I)[Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist newArray(I)[Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;
    .registers 3
    .param p1, "size"    # I

    .line 90
    new-array v0, p1, [Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;

    return-object v0
.end method

.method protected blacklist newResult(Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;II)Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;
    .registers 4
    .param p1, "filter"    # Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    .line 95
    return-object p1
.end method

.method protected bridge synthetic blacklist newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .registers 4

    .line 81
    check-cast p1, Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppResolver;->newResult(Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;II)Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist sortResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;>;"
    return-void
.end method
