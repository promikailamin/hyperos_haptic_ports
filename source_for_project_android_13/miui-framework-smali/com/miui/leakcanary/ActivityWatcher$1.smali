.class Lcom/miui/leakcanary/ActivityWatcher$1;
.super Lcom/miui/leakcanary/internal/ActivityLifecycleCallbacks;
.source "ActivityWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/leakcanary/ActivityWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/leakcanary/ActivityWatcher;


# direct methods
.method constructor blacklist <init>(Lcom/miui/leakcanary/ActivityWatcher;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/leakcanary/ActivityWatcher;

    .line 12
    iput-object p1, p0, Lcom/miui/leakcanary/ActivityWatcher$1;->this$0:Lcom/miui/leakcanary/ActivityWatcher;

    invoke-direct {p0}, Lcom/miui/leakcanary/internal/ActivityLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onActivityDestroyed(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 14
    invoke-static {}, Lcom/miui/leakcanary/ObjectWatcher;->getInstance()Lcom/miui/leakcanary/ObjectWatcher;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " received Activity#onDestroy() callback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {v0, p1, v1}, Lcom/miui/leakcanary/ObjectWatcher;->expectWeaklyReachable(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    return-void
.end method
