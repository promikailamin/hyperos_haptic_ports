.class public Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;
.super Landroid/content/IntentFilter;
.source "FilterInfoInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/hybrid/hook/FilterInfoInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuickAppIntentFilter"
.end annotation


# instance fields
.field private blacklist appInfo:Lcom/android/internal/app/QuickAppResolveInfo;

.field private blacklist uriPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor blacklist <init>(Landroid/content/IntentFilter;)V
    .registers 2
    .param p1, "intentFilter"    # Landroid/content/IntentFilter;

    .line 61
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 62
    return-void
.end method


# virtual methods
.method public blacklist getAppInfo()Lcom/android/internal/app/QuickAppResolveInfo;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;->appInfo:Lcom/android/internal/app/QuickAppResolveInfo;

    return-object v0
.end method

.method public blacklist getUriPattern()Ljava/util/regex/Pattern;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;->uriPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method blacklist setAppInfo(Lcom/android/internal/app/QuickAppResolveInfo;)V
    .registers 2
    .param p1, "appInfo"    # Lcom/android/internal/app/QuickAppResolveInfo;

    .line 65
    iput-object p1, p0, Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;->appInfo:Lcom/android/internal/app/QuickAppResolveInfo;

    .line 66
    return-void
.end method

.method blacklist setUriPattern(Ljava/lang/String;)V
    .registers 3
    .param p1, "uriPatternText"    # Ljava/lang/String;

    .line 69
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;->uriPattern:Ljava/util/regex/Pattern;

    .line 70
    return-void
.end method
