.class public Landroid/os/perfdebug/ContentProviderMonitor;
.super Ljava/lang/Object;
.source "ContentProviderMonitor.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist newContentProviderMonitor()Landroid/os/perfdebug/ContentProviderMonitor;
    .registers 1

    .line 13
    const-class v0, Landroid/os/perfdebug/ContentProviderMonitor;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/perfdebug/ContentProviderMonitor;

    return-object v0
.end method


# virtual methods
.method public blacklist monitorCreateBegin()V
    .registers 1

    .line 17
    return-void
.end method

.method public blacklist monitorCreateEnd(Landroid/content/pm/ProviderInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/content/pm/ProviderInfo;

    .line 20
    return-void
.end method
